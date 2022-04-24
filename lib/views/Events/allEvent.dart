import 'package:PLF/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:PLF/utils/ColorScheme.dart';

import '../../utils/url_base.dart';
import '../Webview/webview.dart';
import 'widgets/eventWidget.dart';
import 'widgets/eventHistoryWidget.dart';

class AllUpcomingEvents extends StatefulWidget {
  final List<EventModel> eventModel;

  const AllUpcomingEvents({Key key, this.eventModel}) : super(key: key);

  @override
  State<AllUpcomingEvents> createState() => _AllUpcomingEventsState();
}

class _AllUpcomingEventsState extends State<AllUpcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Upcoming Events",
            style: TextStyle(color: Color.fromARGB(255, 34, 33, 33)),
          ),
          elevation: 0.0,
          backgroundColor: white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (context, _, __) {
                              return WebViewPage(
                                  title: "Ad", url: UrlBase.baseWebURL);
                            },
                            transitionsBuilder: (_, __, ___, Widget child) {
                              return child;
                            }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(
                        "https://childrensliteraturefestival.com/wp-content/uploads/2021/03/Peace-ing_Together.gif"),
                  )),
            ),
            widget.eventModel != null && widget.eventModel.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                        itemCount: widget.eventModel.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, right: 10, left: 10),
                            child: eventHistoryWidget(
                                widget.eventModel[index].url,
                                widget.eventModel[index].name,
                                widget.eventModel[index].description,
                                widget.eventModel[index].description != null
                                    ? true
                                    : false,
                                context,
                                widget.eventModel[index]),
                          );
                        }),
                  )
                : Center(
                    child: Text(
                      "No UpComing Events Available",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
          ],
        ));
  }
}