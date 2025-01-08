import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_super_basic_1/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppStyle().themeData,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Super Basic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //overide init state
  // @override
  // void initState() {
  //   super.initState();

  //   print("Cek : Masuk Init State");

  //   //change _counter value to 5 after 2 seconds
  //   Future.delayed(const Duration(seconds: 2), () {
  //     setState(() {
  //       _counter = 5;
  //       print("Cek : Counter value change to 5");
  //     });
  //   });
  // }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //     print("Cek : $_counter");
  //   });
  // }

  //test debugger
  void _incrementCounter() {
    setState(() {
      _counter++;
      print('Cek : Counter value change to $_counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // elevation: 10,
        title: LayoutBuilder(
          builder: (context, Constraints){
            if(Constraints.maxWidth > 600){
              return const Text("KlikLaku", style: TextStyle(color: Colors.white, fontSize: 40),);
            } else {
              return const Text("KlikLaku", style: TextStyle(color: Colors.white, fontSize: 20),);
            }
          }
        

        //Menggunakan Title biasa tanpa responsive
        // Container(
        //   child: 
        //   // const Text("KlikLaku", style: TextStyle(color: Colors.white, fontSize: 20),),
        //   Text(
        //     "KlikLaku",
        //     style: Theme.of(context).textTheme.headlineSmall,
        //   )

          // Menggunakan Gambar Sebagai Logo
          // Image.network(
          //   'data:image/jpeg;base64,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KTw9yqVVmUFiQoJALEAsQo89AE9PIGeif2+Ht84CVifOm5XBKMrAFkJUhgGRirKdeYYEEeRBED6RE8G5eYV8y85BcLscxUEAsB4kAso37R64HuJ5RgeqkH3EH90rArE8JarFgrKSp5WAIJViofTAfJPKynR8mB857gIlJ5rsDAMpDKQGBBDAgjYII6EEecD3EpKBhvWxvx1sb/RA9RKSsBET513KxZVZSUIVwCCVJUMAwHyTysp0fJgfOB9IiICIiAiIgIiICIiAiIgIiICaJldncpbclsSmuk2GxjcWr71xZk1WlKba+W1Q6C3Ys+QxQI4A2N7iBo13A8/kDI1gblI0bd2is5VVjUh+8JBKK+vjNDYXmA6j1hcCz1vquaxigCC1Dbu2xFych1r73m2BWtlbFdtz8vIWYbLbvEDVOEcNzEurLm4VJaXY2ZBtewHHvQ7Acqy87UkaCddnkUrtseey2cvM1OSBu3iFyoxG6XyGyO7epwDyqyunMpB5WPMPMTe9RA0fI4Tm8thqTNC86Gmp893bpUyk2OLuYJznehYxHRuVtcg+l/COIEue8uLM95oK5JRMdmzLrFtuUMO+TumoAr02hWV5QGJm6RA0q3gWco5q7sgs/wBsd8DlWHmU51NlaVEsRUxxhegZOXRYbI8R9+zXCMmvNbIuFgq1kLUtt/21YiWDAKoSWY+NN5I2QD5nezt0QIz4J2UzsegLWrVuKcWmw82PW79zarPXS2PyHRTvBzWsH2V+Eu2My1PAs8q7Nfkhu5RKl+2rPPKyHsQ8ra7w0NUgsJYqdaZivMd2iBotfBMtHtdasoVWW2WCpc0peHOPiVVWWWiz4SqarwU521zrpW0NVxOD8RVOUveXbGpSx3ynI51qx1dKtP8AAZjXb8YU2GsLh+vLN5iBpnDeB5RyQ9jZleMGvsSp82y1hurDFa2FbW5xz15J5CWUc/nuW/B+B51OPRTeLrBX3IdaMo420XGFapXqxeXunHwgGAfo+yfgDe4gaXwzgmeiVtZdkG1GwR1ymsQorqMnmXm5bCUL9WGydEaMrxDstfbkZeSrUoTZ32OVTWQzjArxx8fz/FpzhgV5d9N70ZucQNQHBcxMikJdkGpRjnmbIssKlXZrxbz2fGc4OhtX8dDu+UGfHH4Dk82M1gyD3GQLNvlPZYQcayo2N8byMO8NZIHLzKXHdrzMrbrEDRauC53Lpjm/cUWwjOdjdkLajPZUO9XkRgG0A1WxtdIPlbF2bxsisW/bJbbNSUU2tfyhcWhGALEn7othOydkk7O9nMRAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERARETIRETAREQEREBERARETIRETAREQEREBERARETIRETAREQP/Z',
          //   fit: BoxFit.cover,
          // ),
        ),

        // Menggunakan Text sebgaai Logo
        // Text(
        // "KlikLaku",
        //  style: Theme.of(context).textTheme.headlineSmall,
        // ),
        // centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),

        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)),

          LayoutBuilder(
            builder: (context, constraints  ){
              if(constraints.maxWidth > 600){
                return IconButton(onPressed: () {}, icon: Icon(Icons.notifications));
              }else{
                return IconButton(onPressed: (){}, icon: Icon(Icons.more_vert));
              }
            }),
          // IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          // Container(
          //   child: Icon(Icons.more_vert, color: Colors.white), onPressed: () {},
          //   // width: 30,
          //   // child: Image.asset('assets/images/traspac.png'),
          //   // child: Icon(
          //   //   Icons.home,
          //   //   color: Colors.white,
          //   //   // size: 35,
          //   //   ),
          // ),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.download),
              color: Colors.red[100],
            ),
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.green,
          size: 40,
        ),
      ),
    );
  }
}
