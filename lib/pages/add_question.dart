import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  bool isChecked = false;
  bool value = false;
  TextEditingController AddController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8D376F),
      body: InkWell(onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (
            BuildContext context,
          ) {
            return Container(
              height: 510,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xff8D376F),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.clamp,
                  colors: [
                    Color(0xffDA8BD9),
                    Color(0xffF3BD6B),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 51)),
                    Container(
                      height: 55,
                      width: 281,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        controller: AddController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            hintText: "Add Question",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 60)),
                    Container(
                      width: 240,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(27, 10, 0, 0),
                            child: Text(
                              "Answer A",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                          ),
                          Checkbox(
                              focusColor: Color(0xffDA8BD9),
                              activeColor: Color(0xff8D376F).withOpacity(0.6),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? val) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              }),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 510),
                        ),
                        Container(
                          width: 240,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(27, 10, 0, 0),
                                child: Text(
                                  "Answer B",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                              ),
                              Checkbox(
                                  activeColor:
                                      Color(0xff8D376F).withOpacity(0.6),
                                  value: value,
                                  onChanged: (bool? val) {
                                    setState(() {
                                      value = !value;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 21,
                            width: 18,
                            color: Color(0xff8D376F),
                            child: Icon(
                              Icons.add,
                              color: Color(0xffF3BD6B),
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 59,
                        width: 281,
                        decoration: BoxDecoration(
                          color: Color(0xff8D376F),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                            child: Text(
                          "Coniform",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
