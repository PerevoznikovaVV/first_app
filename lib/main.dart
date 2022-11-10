import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PerevoznikovaVV\nfirst app'),
          backgroundColor: Colors.pink),
        body: const UpdateText()
      ),
    );
  }
}

class UpdateText extends StatefulWidget{
  const UpdateText({super.key});

  @override
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State{
  String txt1 = 'Это мое приложение на Flutter!';
  String txt2 = 'Это котик!';
  String txt = 'Это мое приложение на Flutter!';
  changeText() {
    setState(() {
      if(txt==txt1){
        txt=txt2;
      }
      else{
        txt = txt1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              //лейбл с текстом, прижатый к левому краю
              Container(alignment: Alignment.topLeft, padding: const EdgeInsets.all(18.0),
                  child:
                  Text(txt, style: const TextStyle(fontSize: 20))),

              //кнопка, при нажатии на которую мы попадём на страницу с гитом вашего проекта. Она должна быть по центру;
              Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: ElevatedButton(onPressed: () async{
                    Uri urlstr=Uri.parse('https://github.com/PerevoznikovaVV/first_app');
                    if(await canLaunchUrl(urlstr))
                    {
                      await launchUrl(urlstr);
                    }
                    else
                    {
                      throw 'Не удалось запустить $urlstr';
                    }},
                      child: Text('Перейти на Git',style: TextStyle(fontSize: 18)),
                      style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Colors.pink)))),

              //кнопка, при нажатии на которую мы попадём на страницу СмолГУ. Она должна быть прижата к правому краю;
              Container(alignment: Alignment.centerRight, padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(onPressed: () async{
                    Uri urlstr1=Uri.parse('https://smolgu.ru/');
                    if(await canLaunchUrl(urlstr1))
                    {
                      await launchUrl(urlstr1);
                    }
                    else
                    {
                      throw 'Не удалось запустить $urlstr1';
                    }},
                      child: Text('Перейти на сайт СмолГУ',style: TextStyle(fontSize: 18)),
                      style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Colors.pink)))),

              //Картинка должна по центру по горизонтали и прижата к нижнему краю с отступом ровно в 42 пикселя
              Container(alignment: Alignment.bottomCenter, padding: const EdgeInsets.fromLTRB(0.0, 29.0, 0.0, 42.0, ),
                  child: SizedBox(width: 340, height: 290,
                    child: InkWell(radius: 10,
                      onTap: () => changeText(),
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: const AssetImage('assets/image/cat.jpg')
                      ),
                    ),
                  )
            //      IconButton(icon: Image.asset("assets/image/cat.jpg",fit:BoxFit.cover,),iconSize: 300,
             //       onPressed: () => changeText()
             //     )
    ),
            ])
    );
  }
}

/*
            child: InkWell(
              radius: 100,
              // display a snackbar on tap
              onTap: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Hello There!'),
                    duration: Duration(milliseconds: 1500),
                  ),
                );
              },
              // implement the image with Ink.image
              child: Ink.image(
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://legkovmeste.ru/wp-content/uploads/2019/02/post_5bf33ffeaf5d7.jpg'),
              ),
            ),
          ),
        ),
      ),
);
 */






/*
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('PerevoznikovaVV\nfirst app'),backgroundColor: Colors.pink),
            body: const MyBody()
    ));
  }}

class MyBody extends StatefulWidget {
  const MyBody({super.key});
  MyBodyState createText()=>MyBodyState();

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class MyBodyState extends State{
  String txt ='Это ме первое приложение на Flutter!';
  createText() {
    setState(() {
      txt = 'Это кот!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      //лейбл с текстом, прижатый к левому краю
        Container(alignment: Alignment.topLeft, padding: const EdgeInsets.all(18.0),
            child:
            Text(txt, style: const TextStyle(fontSize: 20))),

      //кнопка, при нажатии на которую мы попадём на страницу с гитом вашего проекта. Она должна быть по центру;
        Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
            child: ElevatedButton(onPressed: () async{
              Uri urlstr=Uri.parse('https://smolgu.ru/');
              if(await canLaunchUrl(urlstr))
              {
                await launchUrl(urlstr);
              }
              else
              {
                throw 'Не удалось запустить $urlstr';
              }},
                child: Text('Перейти на Git',style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.pink)))),

      //кнопка, при нажатии на которую мы попадём на страницу СмолГУ. Она должна быть прижата к правому краю;
        Container(alignment: Alignment.centerRight, padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(onPressed: () async{
              Uri urlstr1=Uri.parse('https://smolgu.ru/');
              if(await canLaunchUrl(urlstr1))
              {
                await launchUrl(urlstr1);
              }
              else
              {
                throw 'Не удалось запустить $urlstr1';
              }},
                child: Text('Перейти на сайт СмолГУ',style: TextStyle(fontSize: 18)),
                  style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.pink)))),

      //Картинка должна по центру по горизонтали и прижата к нижнему краю с отступом ровно в 42 пикселя.
      //При нажатии на картинку текст в лейбле должен меняться на "Это котик". При следующем нажатии на картинку текст должен
      //вернуться на изначальный. И так должно идти чередование.
      //Image.asset("assets/image/cat.jpg",width: 370, height: 290))
        Container(alignment: Alignment.bottomCenter, padding: const EdgeInsets.fromLTRB(0.0, 29.0, 0.0, 42.0, ), width: 370,height: 290,
            child:IconButton(icon: Image.asset("assets/image/cat.jpg",fit:BoxFit.cover,),iconSize: 300,
                onPressed:() async {
                  createText();
                }
    ))
    ]);
    }}
*/