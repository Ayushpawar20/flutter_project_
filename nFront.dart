import 'package:chat/details.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class InternshipMeta {
  final int id;
  final String title;
  final String employmentType;
  final String companyLogo;
  final String companyName;
  final String companyUrl;
  final String employerName;
  final String type;
  final String url;
  final bool isPremium;
  final bool isPremiumInternship;
  final bool isExternal;
  final bool isInternChallenge;
  final bool isActive;
  final String expiresAt;
  final String closedAt;
  final String profileName;
  final bool isPartTime;
  final String startDate;
  final String duration;
  final Stipend stipend;
  final String jobExperience;
  final String experience;
  final String postedOn;
  final String applicationDeadline;
  final String expiringIn;
  final String postedByLabel;
  final String postedByLabelType;
  final List<String> locationNames;
  final List<Location> locations;
  final String startDateComparisonFormat;
  final String startDate1;
  final String startDate2;
  final bool isPPO;
  final bool isPPOSalaryDisclosed;
  final String ppoSalary;
  final String ppoSalary2;
  final String ppoLabelValue;
  final bool toShowExtraLabel;
  final String extraLabelValue;
  final bool isExtraLabelBlack;
  final List<String> campaignNames;
  final String campaignName;
  final bool toShowInSearch;
  final String campaignUrl;
  final DateTime campaignStartDateTime;
  final DateTime campaignLaunchDateTime;
  final DateTime campaignEarlyAccessStartDateTime;
  final DateTime campaignEndDateTime;
  final List<Label> labels;
  final String labelsApp;
  final List<String> labelsAppInCard;
  final bool isCovidWFHSelected;
  final bool toShowCardMessage;
  final String message;
  final bool isApplicationCappingEnabled;
  final String applicationCappingMessage;
  final List<OverrideMetaDetail> overrideMetaDetails;
  final bool eligibleForEasyApply;
  final bool eligibleForB2BApplyNow;
  final bool toShowB2BLabel;
  final bool isInternationalJob;
  final bool toShowCoverLetter;
  final String officeDays;

  InternshipMeta({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.companyLogo,
    required this.companyName,
    required this.companyUrl,
    required this.employerName,
    required this.type,
    required this.url,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.isExternal,
    required this.isInternChallenge,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.isPartTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPPO,
    required this.isPPOSalaryDisclosed,
    required this.ppoSalary,
    required this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    required this.campaignStartDateTime,
    required this.campaignLaunchDateTime,
    required this.campaignEarlyAccessStartDateTime,
    required this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWFHSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2BApplyNow,
    required this.toShowB2BLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    required this.officeDays,
  });

  factory InternshipMeta.fromJson(Map<String, dynamic> json) {
    return InternshipMeta(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      employmentType: json['employment_type'] ?? '',
      companyLogo: json['company_logo'] ?? '',
      companyName: json['company_name'] ?? '',
      companyUrl: json['company_url'] ?? '',
      employerName: json['employer_name'] ?? '',
      type: json['type'] ?? '',
      url: json['url'] ?? '',
      isPremium: json['is_premium'] ?? false,
      isPremiumInternship: json['is_premium_internship'] ?? false,
      isExternal: json['is_external'] ?? false,
      isInternChallenge: json['is_intern_challenge'] ?? false,
      isActive: json['is_active'] ?? false,
      expiresAt: json['expires_at'] ?? '',
      closedAt: json['closed_at'] ?? '',
      profileName: json['profile_name'] ?? '',
      isPartTime: json['is_part_time'] ?? false,
      startDate: json['start_date'] ?? '',
      duration: json['duration'] ?? '',
      stipend: Stipend.fromJson(json['stipend'] ?? {}),
      jobExperience: json['job_experience'] ?? '',
      experience: json['experience'] ?? '',
      postedOn: json['posted_on'] ?? '',
      applicationDeadline: json['application_deadline'] ?? '',
      expiringIn: json['expiring_in'] ?? '',
      postedByLabel: json['posted_by_label'] ?? '',
      postedByLabelType: json['posted_by_label_type'] ?? '',
      locationNames: List<String>.from(json['location_names'] ?? []),
      locations: List<Location>.from(
          json['locations']?.map((location) => Location.fromJson(location)) ??
              []),
      startDateComparisonFormat: json['start_date_comparison_format'] ?? '',
      startDate1: json['start_date_1'] ?? '',
      startDate2: json['start_date_2'] ?? '',
      isPPO: json['is_ppo'] ?? false,
      isPPOSalaryDisclosed: json['is_ppo_salary_disclosed'] ?? false,
      ppoSalary: json['ppo_salary'] ?? '',
      ppoSalary2: json['ppo_salary_2'] ?? '',
      ppoLabelValue: json['ppo_label_value'] ?? '',
      toShowExtraLabel: json['to_show_extra_label'] ?? false,
      extraLabelValue: json['extra_label_value'] ?? '',
      isExtraLabelBlack: json['is_extra_label_black'] ?? false,
      campaignNames: List<String>.from(json['campaign_names'] ?? []),
      campaignName: json['campaign_name'] ?? '',
      toShowInSearch: json['to_show_in_search'] ?? false,
      campaignUrl: json['campaign_url'] ?? '',
      campaignStartDateTime: json['campaign_start_date_time'] != null
          ? DateTime.parse(json['campaign_start_date_time'])
          : DateTime.now(),
      campaignLaunchDateTime: json['campaign_launch_date_time'] != null
          ? DateTime.parse(json['campaign_launch_date_time'])
          : DateTime.now(),
      campaignEarlyAccessStartDateTime:
          json['campaign_early_access_start_date_time'] != null
              ? DateTime.parse(json['campaign_early_access_start_date_time'])
              : DateTime.now(),
      campaignEndDateTime: json['campaign_end_date_time'] != null
          ? DateTime.parse(json['campaign_end_date_time'])
          : DateTime.now(),
      labels: List<Label>.from(
          json['labels']?.map((label) => Label.fromJson(label)) ?? []),
      labelsApp: json['labels_app'] ?? '',
      labelsAppInCard: List<String>.from(json['labels_app_in_card'] ?? []),
      isCovidWFHSelected: json['is_covid_wfh_selected'] ?? false,
      toShowCardMessage: json['to_show_card_message'] ?? false,
      message: json['message'] ?? '',
      isApplicationCappingEnabled:
          json['is_application_capping_enabled'] ?? false,
      applicationCappingMessage: json['application_capping_message'] ?? '',
      overrideMetaDetails: List<OverrideMetaDetail>.from(
          json['override_meta_details']
                  ?.map((detail) => OverrideMetaDetail.fromJson(detail)) ??
              []),
      eligibleForEasyApply: json['eligible_for_easy_apply'] ?? false,
      eligibleForB2BApplyNow: json['eligible_for_b2b_apply_now'] ?? false,
      toShowB2BLabel: json['to_show_b2b_label'] ?? false,
      isInternationalJob: json['is_international_job'] ?? false,
      toShowCoverLetter: json['to_show_cover_letter'] ?? false,
      officeDays: json['office_days'] ?? '',
    );
  }
}

class Stipend {
  final String minimum;
  final String maximum;

  Stipend({
    required this.minimum,
    required this.maximum,
  });

  factory Stipend.fromJson(Map<String, dynamic> json) {
    return Stipend(
      minimum: json['minimum'] ?? '',
      maximum: json['maximum'] ?? '',
    );
  }
}

class Location {
  final String id;
  final String name;
  final String slug;
  final String type;
  final String pincode;
  final String lat;
  final String lng;
  final String state;
  final String district;
  final String subLocality;
  final String landmark;

  Location({
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    required this.pincode,
    required this.lat,
    required this.lng,
    required this.state,
    required this.district,
    required this.subLocality,
    required this.landmark,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      slug: json['slug'] ?? '',
      type: json['type'] ?? '',
      pincode: json['pincode'] ?? '',
      lat: json['lat'] ?? '',
      lng: json['lng'] ?? '',
      state: json['state'] ?? '',
      district: json['district'] ?? '',
      subLocality: json['sub_locality'] ?? '',
      landmark: json['landmark'] ?? '',
    );
  }
}

class Label {
  final String key;
  final String value;

  Label({
    required this.key,
    required this.value,
  });

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      key: json['key'] ?? '',
      value: json['value'] ?? '',
    );
  }
}

class OverrideMetaDetail {
  final String key;
  final String value;

  OverrideMetaDetail({
    required this.key,
    required this.value,
  });

  factory OverrideMetaDetail.fromJson(Map<String, dynamic> json) {
    return OverrideMetaDetail(
      key: json['key'] ?? '',
      value: json['value'] ?? '',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<InternshipMeta>> internshipData;
  String? selectedProfile;
  String? selectedCity;
  String? selectedDuration;
  String _searchText = '';

  List<String> profileOptions = [
    "All",
    "Data Science",
    'Administration',
    'Business Analytics',
    'Brand Management',
    'Android App Development',
    'Brand Management',
    'Product Management'
  ];
  List<String> cityOptions = [
    'All',
    'Munnar',
    'Delhi',
    'Lucknow',
    'Kera',
    'Tarn Taran',
    'Banga(Phillippines)',
    'Parbhani',
    'Gurgaon'
  ];
  List<String> durationOptions = [
    'All',
    "3 Months",
    "2 Months",
  ];

  @override
  void initState() {
    super.initState();
    internshipData = fetchInternshipData();
  }

  Future<List<InternshipMeta>> fetchInternshipData() async {
    try {
      final response = await http
          .get(Uri.parse('https://internshala.com/flutter_hiring/search'));

      if (response.statusCode == 200) {
        final dynamic jsonResponse = json.decode(response.body);
        final Map<String, dynamic> internshipsMeta =
            jsonResponse['internships_meta'] ?? {};
        final List<dynamic> internships = internshipsMeta.values.toList();

        List<InternshipMeta> internshipList =
            internships.map((data) => InternshipMeta.fromJson(data)).toList();

        return internshipList;
      } else {
        throw Exception(
            'Failed to load internship data - ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Error loading internship data: $error');
    }
  }

  List<InternshipMeta> applyFilters(List<InternshipMeta> internships) {
    if (selectedProfile != null && selectedProfile != 'All') {
      internships = internships
          .where((internship) => internship.profileName == selectedProfile)
          .toList();
    }

    if (selectedCity != null && selectedCity != 'All') {
      internships = internships
          .where(
              (internship) => internship.locationNames.contains(selectedCity))
          .toList();
    }

    if (selectedDuration != null && selectedDuration != 'All') {
      internships = internships
          .where((internship) => internship.duration == selectedDuration)
          .toList();
    }

    if (_searchText.isNotEmpty) {
      internships = internships
          .where((internship) =>
              internship.title.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.employmentType
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.companyName
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.companyUrl
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.employerName
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.type
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.url
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.jobExperience
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.experience
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.postedOn
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.applicationDeadline
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.expiringIn
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.postedByLabel
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.postedByLabelType
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.locationNames
                  .join(', ')
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.startDateComparisonFormat
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.startDate1
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.startDate2
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.ppoSalary
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.ppoSalary2
                  .toLowerCase()
                  .contains(_searchText.toLowerCase()) ||
              internship.ppoLabelValue.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.extraLabelValue.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.campaignNames.join(', ').toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.campaignName.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.campaignUrl.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.labels.map((label) => '${label.key}: ${label.value}').join(', ').toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.labelsApp.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.labelsAppInCard.join(', ').toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.message.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.applicationCappingMessage.toLowerCase().contains(_searchText.toLowerCase()) ||
              internship.overrideMetaDetails.map((detail) => '${detail.key}: ${detail.value}').join(', ').toLowerCase().contains(_searchText.toLowerCase()))
          .toList();
    }

    return internships;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internship App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchText = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Text('Filter'),
                    SizedBox(height: 0),
                    IconButton(
                      icon: Icon(Icons.filter_list),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.all(16.0),
                              title: Text('Filter Options'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Profile:'),
                                  DropdownButton<String>(
                                    value: selectedProfile,
                                    items:
                                        profileOptions.map((String language) {
                                      return DropdownMenuItem<String>(
                                        value: language,
                                        child: Text(language),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedProfile = value;
                                      });
                                    },
                                  ),
                                  SizedBox(height: 10.0),
                                  Text('City:'),
                                  DropdownButton<String>(
                                    value: selectedCity,
                                    items: cityOptions.map((String state) {
                                      return DropdownMenuItem<String>(
                                        value: state,
                                        child: Text(state),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedCity = value;
                                      });
                                    },
                                  ),
                                  SizedBox(height: 10.0),
                                  Text('Category:'),
                                  DropdownButton<String>(
                                    value: selectedDuration,
                                    items:
                                        durationOptions.map((String category) {
                                      return DropdownMenuItem<String>(
                                        value: category,
                                        child: Text(category),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedDuration = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          FutureBuilder<List<InternshipMeta>>(
            future: internshipData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                List<InternshipMeta> internships = snapshot.data ?? [];

                // Apply filters here
                internships = applyFilters(internships);

                return Expanded(
                  child: ListView.builder(
                    itemCount: internships.length,
                    itemBuilder: (context, index) {
                      final internship = internships[index];
                      return Card(
                        elevation: 2.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        child: ListTile(
                          title: Text(internship.title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              buildDetailRow('Company', internship.companyName),
                              buildDetailRow(
                                  'Employer', internship.employerName),
                              buildDetailRow('Type', internship.type),
                              buildDetailRow('Locations',
                                  internship.locationNames.join(', ')),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InternshipDetailPage(
                                    internship: internship),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 90,
            child: Text(
              '$label: ',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Text(
              value ?? 'N/A',
              style: TextStyle(fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
