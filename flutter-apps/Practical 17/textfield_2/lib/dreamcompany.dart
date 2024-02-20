import 'package:flutter/material.dart';

class DreamCompany extends StatefulWidget {
  const DreamCompany({super.key});

  @override
  State createState() => _DreamCompanyState();
}

class _DreamCompanyState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController compNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  String? name = "";
  String? compName = "";
  String? location = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dream Company"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Your Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: compNameController,
              decoration: InputDecoration(
                hintText: "Company Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: "Company Location",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    40,
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = nameController.text;
                  compName = compNameController.text;
                  location = locationController.text;
                  nameController.clear();
                  compNameController.clear();
                  locationController.clear();
                });
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Dream Company"),
            Row(
              children: [
                const SizedBox(
                  height: 120,
                  width: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Company: ",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Location: ",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$name",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$compName",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$location",
                      ),
                    ],
                  ),
                ),
                (compName == "Google" || compName == "google" || compName == "GOOGLE")
                ? SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/images/Google_Icon.png"),
                  )
                : const SizedBox(
                    width: 150,
                    height: 150,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
