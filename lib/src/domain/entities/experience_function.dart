class ExperienceFunction {
  final String title;
  final String period;
  final List<String> descriptions;
  final List<String> technologies;

  ExperienceFunction({
    required this.title,
    required this.period,
    required this.descriptions,
    required this.technologies,
  });
}

class CompanyExperience {
  final String company;
  final List<ExperienceFunction> functions;

  CompanyExperience({
    required this.company,
    required this.functions,
  });
}
