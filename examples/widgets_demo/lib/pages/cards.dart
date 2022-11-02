import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Padding(
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
        ),
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
        ),
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
                SecondaryButton(
                  onPressed: () {},
                  label: 'label',
                  size: ButtonSize.extraSmall,
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Header',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'Subhead',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ]),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Header',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'Subhead',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ]),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.navigate_next,
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SecondaryButton(onPressed: () {}, label: 'Enabled'),
                  const SizedBox(
                    width: 8,
                  ),
                  PrimaryButton(onPressed: () {}, label: 'Enabled'),
                ],
              ),
            )
          ]),
        ),
        Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur varius felis rutrum porta. Suspendisse vulputate leo ligula, non maximus neque mattis vel. Sed tempor, nunc vel dignissim congue, nisl nulla semper lectus, sit amet euismod ante ligula quis ligula. Vivamus faucibus nisi a justo dictum, quis scelerisque libero feugiat.',
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Enabled')),
                  const SizedBox(
                    width: 8,
                  ),
                  PrimaryButton(onPressed: () {}, label: 'Enabled'),
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
