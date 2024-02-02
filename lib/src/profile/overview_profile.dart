import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/src/model/profile.dart';
import 'package:myportfolio/src/tool/fonts.dart';
import 'package:myportfolio/src/tool/helper.dart';
import 'package:myportfolio/src/widget/base_constrained_box.dart';
import 'package:myportfolio/src/widget/undeline_text_button.dart';
import 'package:myportfolio/src/widget/social_icon_button.dart';

class OverviewProfile extends StatelessWidget {
  final ProfileClass profile;

  const OverviewProfile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return BaseConstrainedBox(
      child: Flex(
        direction: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                profile.name,
                style: const TextStyle(
                  fontFamily: Font.robotoBold,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              titleAlignment: ListTileTitleAlignment.top,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.about,
                    style: const TextStyle(fontFamily: Font.robotoRegular),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  UnderlineTextButton(
                    name: profile.locationName,
                    onTap: () async => await _openMap(profile.locationLatitud, profile.locationLongitud),
                    leftIcon: FontAwesomeIcons.locationDot,
                    fontFamily: Font.robotoRegular,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      SocialIconButton(
                        icon: FontAwesomeIcons.envelope,
                        onPress: () async => await Helper.openUrl("mailto:${profile.contact.email}?subject=I am looking to contact you"),
                      ),
                      ...profile.contact.social
                          .map((e) => SocialIconButton(
                                icon: {
                                  "GitHubIcon": FontAwesomeIcons.github,
                                  "LinkedInIcon": FontAwesomeIcons.linkedinIn,
                                  "XIcon": FontAwesomeIcons.xTwitter
                                }[e.icon]!,
                                onPress: () async => await Helper.openUrl(e.url),
                              ),
                      ).toList()
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 120,
            height: 120,
            margin: const EdgeInsets.only(top: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(profile.avatarUrl),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    Helper.openUrl(googleUrl);
  }

}
