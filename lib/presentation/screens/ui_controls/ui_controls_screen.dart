import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UiControls Screen', style: TextStyle()),
        ),
        body: _UIControlView());
  }
}

class _UIControlView extends StatefulWidget {
  const _UIControlView();

  @override
  State<_UIControlView> createState() => _UIControlViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlViewState extends State<_UIControlView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsDinner = false;
  bool wantsLunch = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode', style: TextStyle()),
          subtitle: const Text('Additional controls', style: TextStyle()),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),

        ExpansionTile(
          title: const Text('Vehicle transport', style: TextStyle()),
          subtitle: Text('$selectedTransportation', style: const TextStyle()),
          children: [
            RadioListTile(
                title: const Text('Car', style: TextStyle()),
                subtitle: const Text('Travel car', style: TextStyle()),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text('Boat', style: TextStyle()),
                subtitle: const Text('Travel Boat', style: TextStyle()),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('plane', style: TextStyle()),
                subtitle: const Text('Travel Plane', style: TextStyle()),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text('Submarine', style: TextStyle()),
                subtitle: const Text('Travel submarine', style: TextStyle()),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    })),
          ],
        ),

        // *

        CheckboxListTile(
          title: const Text(
            'Want Breakfast',
            style: TextStyle()
          ),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text(
            'Want Launch',
            style: TextStyle()
          ),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text(
            'Want Dinner',
            style: TextStyle()
          ),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
