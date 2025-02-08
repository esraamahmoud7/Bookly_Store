import 'package:url_launcher/url_launcher.dart';

import 'customSnakeBar.dart';

Future<void> launchCustomerUrl(context, String? url)async
{
  if(url != null)
    {
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
      else
      {
        customSnakeBar(context, 'Can\'t launch ${url}');
      }
    }

}
