import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/components/no_data_lottie_widget.dart';
import 'package:socialv/main.dart';
import 'package:socialv/models/members/member_response.dart';
import 'package:socialv/screens/profile/screens/member_profile_screen.dart';
import 'package:socialv/screens/search/components/search_card_component.dart';
import 'package:socialv/utils/app_constants.dart';

class SearchMemberComponent extends StatelessWidget {
  final bool showRecent;
  final List<MemberResponse> memberList;
  final VoidCallback? callback;

  const SearchMemberComponent({required this.showRecent, required this.memberList, this.callback});

  @override
  Widget build(BuildContext context) {
    return memberList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showRecent) Text(language.recent, style: boldTextStyle()).paddingOnly(left: 16, right: 16, top: 8),
              AnimatedListView(
                slideConfiguration: SlideConfiguration(delay: 80.milliseconds, verticalOffset: 300),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 60),
                itemCount: memberList.length,
                itemBuilder: (context, index) {
                  MemberResponse member = memberList[index];

                  return SearchCardComponent(
                    isRecent: showRecent,
                    id: member.id.validate(),
                    name: member.name.validate(),
                    image: member.avatarUrls!.full.validate(),
                    subTitle: member.mentionName.validate(),
                    isMember: true,
                    callback: () {
                      callback?.call();
                    },
                    isVerified: member.isUserVerified.validate(),
                  ).paddingSymmetric(vertical: 8).onTap(() async {
                    if (!appStore.recentMemberSearchList.any((element) => element.id.validate() == member.id)) {
                      appStore.recentMemberSearchList.add(memberList[index]);
                      await setValue(SharePreferencesKey.RECENT_SEARCH_MEMBERS, jsonEncode(appStore.recentMemberSearchList));
                    }
                    hideKeyboard(context);
                    MemberProfileScreen(memberId: memberList[index].id.validate()).launch(context).then((value) {
                      callback!.call();
                    });
                  }, splashColor: Colors.transparent, highlightColor: Colors.transparent);
                },
              ),
            ],
          )
        : Observer(
            builder: (_) => SizedBox(
              height: context.height() * 0.7,
              child: NoDataWidget(
                imageWidget: NoDataLottieWidget(),
                title: language.noRecentMembersSearched,
              ),
            ).visible(!appStore.isLoading),
          );
  }
}
