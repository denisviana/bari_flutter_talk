
import 'package:flutter/material.dart';
import 'package:talk_flutter/widgets/presentation_page.dart';
import 'package:talk_flutter/widgets/presentation_page1.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  
  var _animateCenterLogo = false;
  var _animatePageView = false;
  var _animate = false;
  var _controller = PageController(keepPage: true);
  var _pages = List<Widget>();

  @override
  void initState() {
    super.initState();

    _pages.add(PresentationPage(
      primaryImage: Image.network("https://blog.vandersonguidi.com.br/wp-content/uploads/2019/08/flutter.png"),
      title: "What the f*** is Flutter?", 
      topics: [
        "Flutter é um kit de ferramentas do Google para construir aplicações lindas, nativamente compiladas para mobile, web, desktop à partir de um único código-base.",
        "https://flutter.dev/"],)
      );

    _pages.add(PresentationPage(
      title: "Por que o Flutter?",
      primaryImage: 
      Image.network(
        "https://miro.medium.com/max/749/0*MXYivtrvfMI2nZXU.",
        fit: BoxFit.cover,
        ),
      topics: [
      "Performance",
      "Aplicativos rodam em 60/120 FPS",
      "Simplicidade",
      "Open Source",
      "Mais de 170 widgets",
      "Hot Reload/Hot Restart",
      "Ótima documentação",
      "Usa o DART"],));

      _pages.add(PresentationPage1(
        title: "Arquitetura",
        images: <Widget>[
          Flexible(
            child: Image.network(
              "https://gblobscdn.gitbook.com/assets%2F-LanYWbVFl837-fblbH8%2F-LhPLzRR7tsvsWiMW_3H%2F-LhPM8hyRZrVjyZq8GPb%2Fdart-arquitetura.png?alt=media&token=9ab357af-6b9c-4701-9b71-3ce4fd86f604",
              fit: BoxFit.fitHeight,
              height: 300.0,
              ),
          ),
          SizedBox(width: 50.0),
          Flexible(
            child: Image.network("https://gblobscdn.gitbook.com/assets%2F-LanYWbVFl837-fblbH8%2F-LhUTL6Y9zvNzquP3S6K%2F-LhUVJLpW4h-4CosaG_o%2F0*NeeJq8PwkiTj8eMf..png?alt=media&token=c9f93b99-c23a-41e3-9b85-a1e072c10782",
            fit: BoxFit.fitHeight,
            height: 300.0,
            ),
          )
        ],
        )
      );

      _pages.add(PresentationPage(
      primaryImage: Image.network("https://i.imgur.com/jwNpuE3.png"),
      secondaryImage: Image.network("https://www.stickpng.com/assets/images/5847f289cef1014c0b5e486b.png"),
      title: "Dart", 
      topics: [
        "Fortemente tipada",
        "JIT (Just-in-time)",
        "AOT (Ahead-of-time)",
        "Boa curva de aprendizado",
        "Orientada a Objetos",
        "Compila para Javascript"],
        )
      );

      _pages.add(PresentationPage1(
        title: "Tudo é Widget",
        images: <Widget>[
          Flexible(
            child: Image.network(
              "https://gblobscdn.gitbook.com/assets%2F-LanYWbVFl837-fblbH8%2F-LniwfLtARWnAWMMKdwx%2F-Lnix0F8VXOA0J-httFS%2FNewIcogram%202019-07-28%2017_03%20(12).png?alt=media&token=e8ce19ed-d91a-4045-a58b-f3e4fc830c76",
              fit: BoxFit.fitHeight,
              height: 300.0,
              ),
          ),
          SizedBox(width: 50.0),
          Flexible(
            child: Image.network(
            "https://res.cloudinary.com/practicaldev/image/fetch/s--gCy5MuRs--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/q0m1c1s77u7uky4zwh2m.gif",
            fit: BoxFit.fitHeight,
            height: 300.0,
            ),
          )
        ],
        )
      );

      _pages.add(PresentationPage1(
        title: "Ainda sobre Widgets",
        images: <Widget>[
          Flexible(
            child: Image.network(
              "https://flutter.dev/assets/ui/layout/button-section-diagram-3dac85a884b67876ce7b39e4f0bd43b93886c8f61d25055ad2d0971adb16907c.png",
              fit: BoxFit.contain,
              height: 300.0,
              ),
          ),
          SizedBox(width: 50.0),
          Flexible(
            child: Image.network(
            "https://i.imgur.com/pJDYzmp.png",
            fit: BoxFit.fitHeight,
            height: 300.0,
            ),
          )
        ],
        )
      );

      _pages.add(PresentationPage1(
        title: "HOT RELOAD",
        images: <Widget>[
          Flexible(
            child: Image.network(
              "https://dartcode.org/images/marketplace/flutter_hot_reload.gif",
              fit: BoxFit.contain,
              height: 350.0,
              ),
          )
        ],
        )
      );

      _pages.add(PresentationPage1(
        title: "IDE",
        images: <Widget>[
          Flexible(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Android_Studio_icon.svg/512px-Android_Studio_icon.svg.png",
              fit: BoxFit.contain,
              height: 300.0,
              ),
          ),
          Flexible(
            child: Image.network(
              "https://user-images.githubusercontent.com/10379994/31985754-c56b8dba-b998-11e7-9705-a7f984433049.png",
              fit: BoxFit.contain,
              height: 300.0,
              ),
          ),
          Flexible(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/IntelliJ_IDEA_Logo.svg/768px-IntelliJ_IDEA_Logo.svg.png",
              fit: BoxFit.contain,
              height: 300.0,
              ),
          )
        ],
        )
      );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[

              AnimatedAlign(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOutCubic,
                alignment: _animate ? Alignment.topLeft : Alignment.topCenter,
                child: Container(
                  height: 80.0,
                  width: 330.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        "https://www.snowmanlabs.com.br/wp-content/uploads/logo_snowmanlabs_fundo_claro.png",
                        fit: BoxFit.contain,
                        width: 150.0,
                      ),
                      SizedBox(width: 30.0),
                      Image.network(
                        "http://jobs.gonta.com.br/drimgo/blog/wp-content/themes/drimgo-blog/assets/img/logo_drimgo.svg",
                        fit: BoxFit.contain,
                        width: 150.0,
                      )
                    ],
                  ),
                ),
              ),

              AnimatedAlign(
                duration: Duration(milliseconds: 700),
                curve: Curves.easeInBack,
                alignment: _animateCenterLogo
                    ? Alignment(-3.0, 0.0)
                    : Alignment.center,
                child: Image.network(
                  "https://miro.medium.com/fit/c/1838/551/1*szmA2b5DQS_U5wAGgHiPQg.png",
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ),

              AnimatedPositioned(
                top: 0.0,
                left: _animatePageView ? 0.0 : MediaQuery.of(context).size.width,
                right: 0.0,
                bottom: 0.0,
                curve: Curves.elasticInOut,
                duration: Duration(seconds: 1),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                  child: PageView(
                    controller: _controller,
                    physics: BouncingScrollPhysics(),
                    children: _pages,
                  )
                )
              ),

              AnimatedAlign(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOutCubic,
                alignment:
                    _animate ? Alignment(0.0, 2.0) : Alignment.bottomCenter,
                child: RaisedButton(
                  elevation: 0.0,
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  color: Theme.of(context).primaryColor,
                  child:
                      Text("LET'S BORA", style: TextStyle(color: Colors.white)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () async {
                    setState(() {
                      _animateCenterLogo = !_animateCenterLogo;
                    });

                    await Future.delayed(Duration(milliseconds:300));

                    setState(() {
                      _animate = !_animate;
                      _animatePageView = !_animatePageView;
                    });
                  },
                ),
              ),

              AnimatedAlign(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeInOutCubic,
                  alignment:
                      _animate ? Alignment.bottomCenter : Alignment(0.0, 2.0),
                  child: Container(
                    width: 200.0,
                    height: 80.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          elevation: 0.0,
                          onPressed: () {
                            _controller.previousPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                          },
                          child: Icon(Icons.keyboard_arrow_left,
                              color: Colors.white),
                        ),
                        SizedBox(width: 30.0),
                        FloatingActionButton(
                          elevation: 0.0,
                          onPressed: () {
                            _controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                          },
                          child: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
