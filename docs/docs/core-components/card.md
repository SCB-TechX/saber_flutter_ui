# [WIP] Card
การ์ดเหมือนเป็น container ที่เอาไว้ใส่เนื้อหาต่างๆข้างใน เช่น การ์ดสินค้า, อัลบัม, ข้อมูลการติดต่อ และจัด layout ได้หลากหลายตามที่ต้องการ

คุณสามารถใช้ [Card class](https://api.flutter.dev/flutter/material/Card-class.html) ของ Material ที่มีให้ไว้ได้เลย สามารถปรับได้ทั้ง color, shape, shadow, clipBehavior และอื่นๆ อีก

เบื้องต้นจะแสดงตัวอย่างของการใช้งาน Elevation และ Shape ที่ card class มีให้

![Card example](/img/docs/core-components/card/card.png)

 
## Elevation & Shape
โดย default จะจัดให้มีเงาและความโค้งมนของมุมเล็กน้อย  
หากคุณต้องการนำเงาออกทำได้โดย set elevation เป็น 0  

![Card example](/img/docs/core-components/card/card-elevation.png)

```dart
Card(
    elevation: 0,
    child: ........
)
```

ตัวอย่างแสดงการเปลี่ยน shape เพื่อปรับมุมให้โค้ง `16px` คุณยังสามารถเปลี่ยน shape ของการ์ดได้อีกโดย set shape ด้วย [shapeBorder](https://api.flutter.dev/flutter/painting/ShapeBorder-class.html)

![Card example](/img/docs/core-components/card/example-card-1.png)

```dart
Card(
  elevation: 2,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const CircleAvatar(
                child: Text('A'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Header',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'Subhead',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.navigate_next,
          ),
        )
      ],
    ),
  ),
)
```

![Card example](/img/docs/core-components/card/example-card-2.png)

```dart
Card(
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
  child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              const CircleAvatar(
                child: Text('A'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Header',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'Subhead',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColorLight,
          padding: const EdgeInsets.all(80),
        ),
        const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                'Lorem ipsum .....',
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 3)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: const Text('Enabled')),
            const SizedBox(width: 8),
            PrimaryButton(onPressed: () {}, label: 'Enabled'),
          ],
        ),
      )
    ]
  ),
)
```

## Example

```dart
import 'package:component_ui/component_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Card Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Column(
            children: [
              Card(
                child: ........
              ),
            ]
          )
        ),
      ),
    );
  }
}
```