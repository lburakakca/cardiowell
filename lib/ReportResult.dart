class ReportResult {
  final int age;
  final int sex;
  final int cp;
  final int trestbps;
  final int chol;
  final int fbs;
  final int restecg;
  final int thalach;
  final int exang;
  final int oldpeak;
  final int slope;
  final int ca;
  final int thal;
  final int target;
  final int ScoredProbabilitiesFor0;
  final int ScoredProbabilitiesFor1;
  final int ScoredLabels;

  ReportResult(
      {required this.age,
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
      required this.ScoredProbabilitiesFor0,
      required this.ScoredProbabilitiesFor1,
      required this.ScoredLabels});



  factory ReportResult.fromJson(Map<String, dynamic> json) {
    List<dynamic> reports = json['Results'];
    List<ReportResult> Values = reports.map((e) => ReportResult.fromJson(e)).toList(); //here i changed by @Richard Heap answer
    return ReportResult(
      age: json['age'] as int,
      sex: json['sex'] as int,
      cp: json['cp'] as int,
      trestbps: json['trestbps'] as int,
      chol: json['chol'] as int,
      fbs: json['fbs'] as int,
      restecg: json['restecg'] as int,
      thalach: json['thalach'] as int,
      exang: json['exang'] as int,
      oldpeak: json['oldpeak'] as int,
      slope: json['slope'] as int,
      ca: json['ca'] as int,
      thal: json['thal'] as int,
      target: json['target'] as int,
      ScoredProbabilitiesFor0:
          json['Scored Probabilities for Class \"0\"'] as int,
      ScoredProbabilitiesFor1:
          json['Scored Probabilities for Class \"1\"'] as int,
      ScoredLabels: json['Scored Labels'] as int,
   
    );
  }
}
