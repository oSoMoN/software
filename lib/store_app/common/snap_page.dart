/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snapd/snapd.dart';
import 'package:software/l10n/l10n.dart';
import 'package:software/services/app_change_service.dart';
import 'package:software/store_app/common/app_description.dart';
import 'package:software/store_app/common/app_infos.dart';
import 'package:software/store_app/common/media_tile.dart';
import 'package:software/store_app/common/border_container.dart';
import 'package:software/store_app/common/constants.dart';
import 'package:software/store_app/common/app_header.dart';
import 'package:software/store_app/common/page_layouts.dart';
import 'package:software/store_app/common/snap_connections_settings.dart';
import 'package:software/store_app/common/snap_controls.dart';
import 'package:software/store_app/common/snap_model.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class SnapPage extends StatefulWidget {
  const SnapPage({super.key, required this.onPop});

  final VoidCallback onPop;

  static Widget create({
    required BuildContext context,
    required String huskSnapName,
    required final VoidCallback onPop,
  }) =>
      ChangeNotifierProvider<SnapModel>(
        create: (_) => SnapModel(
          doneString: context.l10n.done,
          getService<SnapdClient>(),
          getService<AppChangeService>(),
          huskSnapName: huskSnapName,
        ),
        child: SnapPage(onPop: onPop),
      );

  @override
  State<SnapPage> createState() => _SnapPageState();
}

class _SnapPageState extends State<SnapPage> {
  @override
  void initState() {
    context.read<SnapModel>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SnapModel>();
    final media = model.screenshotUrls ?? [];
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    final isWindowNarrow = screenWidth < 1001;
    final isWindowUltraWide = screenWidth > 1700;

    final rightChildren = [
      BorderContainer(
        padding: const EdgeInsets.only(
          bottom: pagePadding,
          right: pagePadding,
        ),
        child: YaruCarousel(
          nextIcon: const Icon(YaruIcons.go_next),
          previousIcon: const Icon(YaruIcons.go_previous),
          navigationControls: media.length > 1,
          viewportFraction: isWindowUltraWide ? 0.5 : 1,
          height: screenHeight / 3,
          children: [for (final url in media) MediaTile(url: url)],
        ),
      ),
      BorderContainer(
        padding: const EdgeInsets.only(
          bottom: pagePadding,
          right: pagePadding,
        ),
        child: AppDescription(description: model.description ?? ''),
      ),
      if (model.snapIsInstalled)
        BorderContainer(
          padding: const EdgeInsets.only(
            bottom: pagePadding,
            right: pagePadding,
          ),
          child: SnapConnectionsSettings(connections: model.connections),
        )
    ];

    final headerData = AppHeaderData(
      confinementName: model.confinement != null ? model.confinement!.name : '',
      icon: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: model.installDate.isNotEmpty ? model.open : null,
        child: YaruSafeImage(
          url: model.iconUrl,
          fallBackIconData: YaruIcons.snapcraft,
        ),
      ),
      installDate: model.installDate,
      installDateIsoNorm: model.installDateIsoNorm,
      license: model.license ?? '',
      strict: model.strict,
      verified: model.verified,
      publisherName: model.publisher?.displayName ?? '',
      website: model.storeUrl ?? '',
      summary: model.summary ?? '',
      title: model.title ?? '',
      version: model.version,
      controls: const SnapControls(),
    );

    final oneColumnAppHeader = BorderContainer(
      padding: const EdgeInsets.all(pagePadding),
      child: OneColumnAppHeader(
        headerData: headerData,
      ),
    );

    final twoColumnAppHeader = BorderContainer(
      padding: const EdgeInsets.all(pagePadding),
      width: 500,
      child: TwoColumnAppHeader(
        headerData: headerData,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(model.title ?? ''),
        leading: InkWell(
          onTap: widget.onPop,
          child: const Icon(YaruIcons.go_previous),
        ),
      ),
      body: isWindowNarrow
          ? NarrowPageLayout(
              children: [
                oneColumnAppHeader,
                BorderContainer(
                  padding: const EdgeInsets.only(
                    bottom: pagePadding,
                    right: pagePadding,
                    left: pagePadding,
                  ),
                  child: AppInfos(
                    strict: model.strict,
                    confinementName: model.confinement != null
                        ? model.confinement!.name
                        : '',
                    license: model.license ?? '',
                    installDate: model.installDate,
                    installDateIsoNorm: model.installDateIsoNorm,
                    version: model.version,
                  ),
                ),
                for (final rightChild in rightChildren)
                  Padding(
                    padding: const EdgeInsets.only(left: pagePadding),
                    child: rightChild,
                  )
              ],
            )
          : WidePageLayout(
              leftChild: twoColumnAppHeader,
              rightChildren: rightChildren,
            ),
    );
  }
}