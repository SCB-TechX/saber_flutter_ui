import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

const primaryButtonText = 'Primary Button';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Button'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                PrimaryButton(
                  onPressed: () {},
                  label: primaryButtonText,
                ),
                PrimaryButton(
                  onPressed: () {},
                  size: ButtonSize.small,
                  label: primaryButtonText,
                ),
                PrimaryButton(
                  onPressed: () {},
                  size: ButtonSize.extraSmall,
                  label: primaryButtonText,
                ),
              ],
            ),
            Column(
              children: [
                PrimaryButtonWithIcon(
                  onPressed: () {},
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                PrimaryButtonWithIcon(
                  onPressed: () {},
                  size: ButtonSize.small,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                PrimaryButtonWithIcon(
                  onPressed: () {},
                  size: ButtonSize.extraSmall,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SecondaryButton(
                  onPressed: () {},
                  label: 'Secondary Text',
                ),
                SecondaryButton(
                  onPressed: () {},
                  size: ButtonSize.small,
                  label: 'Secondary Text',
                ),
                SecondaryButton(
                  onPressed: () {},
                  size: ButtonSize.extraSmall,
                  label: 'Secondary Text',
                ),
              ],
            ),
            Column(
              children: [
                SecondaryButtonWithIcon(
                  onPressed: () {},
                  label: 'Secondary Text',
                  icon: Icons.add,
                ),
                SecondaryButtonWithIcon(
                  onPressed: () {},
                  size: ButtonSize.small,
                  label: 'Secondary Text',
                  icon: Icons.add,
                ),
                SecondaryButtonWithIcon(
                  onPressed: () {},
                  size: ButtonSize.extraSmall,
                  label: 'Secondary Text',
                  icon: Icons.add,
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LinkButtonWith(
              onPressed: () {},
              label: 'Text Button',
            ),
            HyperLink('Text', onTap: () {}),
            LinkButtonWithIcon(
              onPressed: () {},
              label: 'Text Button',
              icon: Icons.add,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShapeIconButton(
              onPressed: () {},
              icon: Icons.add,
            ),
            const SizedBox(
              width: 8,
            ),
            const ShapeIconButton(
              onPressed: null,
              icon: Icons.add,
              shape: ButtonShape.circle,
            ),
            const SizedBox(
              width: 8,
            ),
            ShapeIconButton(
              onPressed: () {},
              icon: Icons.add,
              shape: ButtonShape.rectangle,
            ),
            const ShapeIconButtonWithLabel(
              onPressed: null,
              label: 'disabled',
              icon: Icons.add,
              shape: ButtonShape.circle,
            ),
            ShapeIconButtonWithLabel(
              onPressed: () {},
              label: 'label',
              icon: Icons.add,
              shape: ButtonShape.rectangle,
            ),
          ],
        ),
      ],
    );
  }
}
