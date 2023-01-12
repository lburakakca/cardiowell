class Report {
  final String age;
  final String sex;
  final String cp;
  final String trestbps;
  final String chol;
  final String fbs;
  final String restecg;
  final String thalach;
  final String exang;
  final String oldpeak;
  final String slope;
  final String ca;
  final String thal;
  final String target;


  Report({
    required this.age,
    required this.sex,
    required this.cp,
    required this.trestbps,
    required this.chol,
    required this.fbs,
    required this.restecg,
    required this.thalach,
    required this.exang,
    required this.oldpeak,
    required this.slope,
    required this.ca,
    required this.thal,
    required this.target,

  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      age: json['age'] as String,
      sex: json['sex'] as String,
      cp: json['cp'] as String,
      trestbps: json['trestbps'] as String,
      chol: json['chol'] as String,
      fbs: json['fbs'] as String,
      restecg: json['restecg'] as String,
      thalach: json['thalach'] as String,
      exang: json['exang'] as String,
      oldpeak: json['oldpeak'] as String,
      slope: json['slope'] as String,
      ca: json['ca'] as String,
       thal: json['thal'] as String,
      target: json['target'] as String,
    );
  }
}