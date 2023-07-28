import 'package:flutter/material.dart';

class TitleButton extends StatelessWidget {
  final String title;
  final bool selected;
  final Function()? onTap;

  const TitleButton({
    super.key,
    this.onTap,
    this.selected = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.only(right: 1.0),
      decoration: BoxDecoration(
        color: selected ? null : Theme.of(context).colorScheme.onSecondary,
        borderRadius: BorderRadius.circular(25.0),
        gradient: selected
            ? const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff368179),
                  Color(0xff11AEBA),
                ],
              )
            : null,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1.0, 1.0),
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 15.0,
              height: 15.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    selected ? Theme.of(context).colorScheme.onPrimary : null,
                gradient: selected
                    ? null
                    : const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        colors: <Color>[
                          Color(0xff368179),
                          Color(0xff11AEBA),
                        ],
                      ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                  color:
                      selected ? Theme.of(context).colorScheme.onPrimary : null,
                ),
              ),
            ),
            Container(
              width: 30.0,
              height: 30.0,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    selected ? Theme.of(context).colorScheme.onPrimary : null,
                gradient: selected
                    ? null
                    : const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        colors: <Color>[
                          Color(0xff368179),
                          Color(0xff11AEBA),
                        ],
                      ),
              ),
              child: Text(
                '?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w700,
                  color: selected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
