import 'package:flutter/material.dart';

void main() => runApp(const WebPageCreationForm());

class WebPageCreationForm extends StatelessWidget {
  const WebPageCreationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebPageCreationFormScreen(),
    );
  }
}

class WebPageCreationFormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Information'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Business Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter the name of your business'),
              ),
              const SizedBox(height: 16),

              const Text('Business Type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DropdownButtonFormField<String>(
                items: ['Gym', 'Salon', 'Cafe', 'Other']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
                decoration: const InputDecoration(hintText: 'Select the category of your business'),
              ),
              const SizedBox(height: 16),

              const Text('Location', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter or Pin the Address'),
              ),
              const SizedBox(height: 16),

              const Text('Key Features', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              CheckboxListTile(
                title: const Text('Strength Training'),
                value: false,
                onChanged: (value) {},
              ),
              CheckboxListTile(
                title: const Text('Cardio Training'),
                value: false,
                onChanged: (value) {},
              ),
              CheckboxListTile(
                title: const Text('Personal Training'),
                value: false,
                onChanged: (value) {},
              ),
              CheckboxListTile(
                title: const Text('Group Classes'),
                value: false,
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),

              const Text('Your Business Logo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Open Camera'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Choose from Gallery'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              const Text('Business Tagline', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter a catchy & descriptive tagline'),
              ),
              const SizedBox(height: 16),

              const Text('Add Description (Optional)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                maxLines: 3,
                decoration: const InputDecoration(hintText: 'Enter a brief description about your business'),
              ),
              const SizedBox(height: 16),

              const Text('Photo Gallery (At Least 4 Images)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Open Camera'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Choose from Gallery'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              const Text('Video Tour (Max. Length allowed is 1 min)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Open Camera'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Choose from Gallery'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              const Text('Social Media Links', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Instagram URL (Optional)'),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Facebook URL (Optional)'),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(hintText: 'LinkedIn URL (Optional)'),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Other URL (Optional)'),
              ),
              const SizedBox(height: 16),

              const Text('By clicking Save & Next, you agree to the T&C.'),
              const SizedBox(height: 16),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process the form data
                    }
                  },
                  child: const Text('Save & Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
