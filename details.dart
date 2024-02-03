import 'package:chat/nFront.dart';
import 'package:flutter/material.dart';

class InternshipDetailPage extends StatelessWidget {
  final InternshipMeta internship;

  InternshipDetailPage({required this.internship});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internship Details'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 16),
              _buildDetailRow('Title', internship.title, fontSize: 24, fontWeight: FontWeight.bold),
              SizedBox(height: 10),
              _buildDetailRow('Company', internship.companyName),
              _buildDetailRow('Employer', internship.employerName),
              _buildDetailRow('Type', internship.type),
              _buildDetailRow('URL', internship.url),
              _buildDetailRow('Is Premium', internship.isPremium.toString()),
              _buildDetailRow('Is Premium Internship', internship.isPremiumInternship.toString()),
              _buildDetailRow('Is External', internship.isExternal.toString()),
              _buildDetailRow('Is Intern Challenge', internship.isInternChallenge.toString()),
              _buildDetailRow('Is Active', internship.isActive.toString()),
              _buildDetailRow('Expires At', internship.expiresAt),
              _buildDetailRow('Closed At', internship.closedAt),
              _buildDetailRow('Profile Name', internship.profileName),
              _buildDetailRow('Is Part Time', internship.isPartTime.toString()),
              _buildDetailRow('Start Date', internship.startDate),
              _buildDetailRow('Duration', internship.duration),
              _buildDetailRow('Stipend Minimum', internship.stipend.minimum),
              _buildDetailRow('Stipend Maximum', internship.stipend.maximum),
              _buildDetailRow('Job Experience', internship.jobExperience),
              _buildDetailRow('Experience', internship.experience),
              _buildDetailRow('Posted On', internship.postedOn),
              _buildDetailRow('Application Deadline', internship.applicationDeadline),
              _buildDetailRow('Expiring In', internship.expiringIn),
              _buildDetailRow('Posted By Label', internship.postedByLabel),
              _buildDetailRow('Posted By Label Type', internship.postedByLabelType),
              _buildDetailRow('Location Names', internship.locationNames.join(', ')),
              _buildDetailRow('Start Date Comparison Format', internship.startDateComparisonFormat),
              _buildDetailRow('Start Date 1', internship.startDate1),
              _buildDetailRow('Start Date 2', internship.startDate2),
              _buildDetailRow('Is PPO', internship.isPPO.toString()),
              _buildDetailRow('Is PPO Salary Disclosed', internship.isPPOSalaryDisclosed.toString()),
              _buildDetailRow('PPO Salary', internship.ppoSalary),
              _buildDetailRow('PPO Salary 2', internship.ppoSalary2),
              _buildDetailRow('PPO Label Value', internship.ppoLabelValue),
              _buildDetailRow('To Show Extra Label', internship.toShowExtraLabel.toString()),
              _buildDetailRow('Extra Label Value', internship.extraLabelValue),
              _buildDetailRow('Is Extra Label Black', internship.isExtraLabelBlack.toString()),
              _buildDetailRow('Campaign Names', internship.campaignNames.join(', ')),
              _buildDetailRow('Campaign Name', internship.campaignName),
              _buildDetailRow('To Show In Search', internship.toShowInSearch.toString()),
              _buildDetailRow('Campaign URL', internship.campaignUrl),
              _buildDetailRow('Campaign Start DateTime', internship.campaignStartDateTime.toString()),
              _buildDetailRow('Campaign Launch DateTime', internship.campaignLaunchDateTime.toString()),
              _buildDetailRow('Campaign Early Access Start DateTime', internship.campaignEarlyAccessStartDateTime.toString()),
              _buildDetailRow('Campaign End DateTime', internship.campaignEndDateTime.toString()),
              _buildDetailRow('Labels', internship.labels.map((label) => '${label.key}: ${label.value}').join(', ')),
              _buildDetailRow('Labels App', internship.labelsApp),
              _buildDetailRow('Labels App In Card', internship.labelsAppInCard.join(', ')),
              _buildDetailRow('Is Covid WFH Selected', internship.isCovidWFHSelected.toString()),
              _buildDetailRow('To Show Card Message', internship.toShowCardMessage.toString()),
              _buildDetailRow('Message', internship.message),
              _buildDetailRow('Is Application Capping Enabled', internship.isApplicationCappingEnabled.toString()),
              _buildDetailRow('Application Capping Message', internship.applicationCappingMessage),
              _buildDetailRow('Override Meta Details', internship.overrideMetaDetails.map((detail) => '${detail.key}: ${detail.value}').join(', ')),
              _buildDetailRow('Eligible For Easy Apply', internship.eligibleForEasyApply.toString()),
              _buildDetailRow('Eligible For B2B Apply Now', internship.eligibleForB2BApplyNow.toString()),
              _buildDetailRow('To Show B2B Label', internship.toShowB2BLabel.toString()),
              _buildDetailRow('Is International Job', internship.isInternationalJob.toString()),
              _buildDetailRow('To Show Cover Letter', internship.toShowCoverLetter.toString()),
              _buildDetailRow('Office Days', internship.officeDays),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {double fontSize = 16, FontWeight fontWeight = FontWeight.normal}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: fontSize, fontWeight: fontWeight),
          children: [
            TextSpan(text: '$label: ', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
