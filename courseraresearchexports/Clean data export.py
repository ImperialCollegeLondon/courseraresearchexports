import pandas as pd

# setup locations
input_file_location = r"C:\Users\rantonyv\Documents\GMPH Coursera\imperial_1669376997496"
output_file_location = "C:\\Users\\rantonyv\\Documents\\GMPH Coursera\\imperial_1669376997496_new\\"

# assign dataframe for all relevant GMPH dashboard files
# assessment data not included in here
file_list = ['users_courses__degree_program_memberships',
                  'feedback_course_ratings',
                'feedback_item_comments',
                 'courses',
                 'course_branch_lessons',
                 'course_branch_modules',
                 'course_item_types',
                 'specializations',
                 'specializations_courses',
                 'course_branch_items',
                 'course_branch_item_assessments',
                 'course_branch_item_peer_assignments',
                 'course_branch_item_programming_assignments',
                 'course_branches',
                 'course_formative_quiz_grades',
                 'course_grades',
                 'course_item_grades',
                 'course_item_passing_states',
                 'course_memberships',
                 'course_passing_states',
                 'course_progress',
                 'course_progress_state_types',
                 'organisation_enrollments',
                 'peer_assignments',
                 'peer_comments',
                 'peer_comments',
                 'peer_reviews',
                 'peer_submissions',
                 'teammate_review_items',
                 'on_demand_sessions',
                 'on_demand_session_memberships',
                 'programming_submissions',
                 'programming_assignments']

df_dict = {}

for file in file_list:

    df_dict[file] = pd.read_csv(input_file_location + "\\" + file + ".csv", sep='delimiter')

    print file
    print df_dict[file]
    if 'imperial_user_id' in df_dict[file].columns:
        if df_dict[file]['imperial_user_id'] ==
print df_dict['users_courses__degree_program_memberships']



# transform feedback_course_comments
with (open(input_file_location + "\\feedback_course_comments.csv", newline='', encoding="utf8") as file_in,
      open(input_file_location + "\\feedback_course_comments_new.csv", 'w', newline='', encoding="utf8") as file_out):

    r = csv.reader(file_in, skipinitialspace=True) # handles non-standard comma-space separator
    w = csv.writer(file_out)

    # header doesn't need extra processing
    header = next(r)
    w.writerow(header)

    # *detailed_context will capture any extra columns due to commas in content.
    for course_id, feedback_system, imperial_user_id, feedback_category, *feedback_text, feedback_ts, course_branch_id in r:
        # the extra address columns will be joined into one column.
        w.writerow([course_id, feedback_system, imperial_user_id, feedback_category, ', '.join(feedback_text), feedback_ts, course_branch_id])


feedback_course_comments = pd.read_csv(input_file_location + "\\feedback_course_comments_new.csv")
#feedback_course_comments.to_csv("C:\\Users\\rantonyv\\Documents\\GMPH Coursera\\imperial_1669376997496_new\\feedback_course_comments.csv", index = False)
# feedback_item_comments file handled in PBI dashboard, this can be moved straight into relevant directory

strip all course_ids that aren't GMPH
users_courses__degree_program_memberships = dataframe_dict[users_courses__degree_program_memberships].loc[dataframe_dict[users_courses__degree_program_memberships]["degree_program_name"] == "Global Master of Public Health"]



create imperial_course_user_id table
imperial_course_user_ids = pd.read_csv(input_file_location + "imperial__idm_2_user_ids.csv")

course_user_ids_dataframes = {}

course_user_ids_list = ['imperial__participatory_approaches_public_health_user_ids',
                       'imperial_advanced_statistics_ds_user_ids',
                        'imperial_anatomyanddiagnostics_first_course_1_user_ids',
                       'imperial_anatomyanddiagnosticsyear2term1_user_ids',
                       'imperial_applying_participatory_approaches_in_public_health_settings_user_ids',
                       'imperial_behaviour_change_in_public_health_user_ids',
                       'imperial_building_on_the_sir_model_user_ids',
                       'imperial_climate_change_health_user_ids',
                       "imperial_clinical_science_integration_first_course_1_user_ids",
                        "imperial_covid_19_user_ids",
                        "imperial_developing_the_sir_model_user_ids",
                        "imperial_dh_gmph_user_ids",
                        "imperial_dh_user_ids",
                        "imperial_digital_health_design_implementation_user_ids",
                        "imperial_digital_learning_dlh_user_ids",
                        "imperial_digitalhealth_first_course_1_user_ids",
                        "imperial_epi_gmph_user_ids",
                        "imperial_epidemiology_mooc_4_degree_user_ids",
                        "imperial_evaluation_of_digital_health_interventions_user_ids",
                        "imperial_first_line_of_defence_innate_immunity_user_ids",
                        "imperial_foundations_public_health_approach_user_ids",
                        "imperial_fphp_gmph_user_ids",
                        "imperial_gdm_gmph_user_ids",
                        "imperial_ghcg_gmph_user_ids",
                        "imperial_ghi_gmph_user_ids",
                        "imperial_ghi_healthcare_entrepreneurship_taking_ideas_to_market_user_ids",
                        "imperial_ghi_healthcare_innovation_what_success_look_like_how_to_achieve_user_ids",
                        "imperial_ghi_mooc_4_user_ids",
                        "imperial_global_disease_distribution_user_ids",
                        "imperial_global_disease_masterclass_communicable_user_ids",
                        "imperial_global_disease_non_communicable_user_ids",
                        "imperial_globalisation_health_governance_user_ids",
                        "imperial_gmph_degree_staff_induction_user_ids",
                        "imperial_gmph_machine_learning_user_ids",
                        "imperial_guide_to_healthcare_innovation_principles_and_practice_user_ids",
                        "imperial_he_gmph_user_ids",
                        "imperial_health_economics_for_health_policy_user_ids",
                        "imperial_health_economics_user_ids",
                        "imperial_health_protection_user_ids",
                        "imperial_health_service_delivery_and_human_resources_user_ids",
                        "imperial_health_systems_and_policy_user_ids",
                        "imperial_healthcoachingconversations_user_ids",
                        "imperial_healthsystems_policy_research_user_ids",
                        "imperial_hp_gmph_user_ids",
                        "imperial_hsd_gmph_user_ids",
                        "imperial_idm_gmph_user_ids",
                        "imperial_immunology_principles_2_user_ids",
                        "imperial_immunology_principles_3_user_ids",
                        "imperial_imperial_gmph_induction_user_ids",
                        "imperial_imperial_sph_public_health_professional_user_ids",
                        "imperial_improvement_in_practice_user_ids",
                        "imperial_induction_course_college_services_user_ids",
                        "imperial_induction_medical_volunteers_user_ids",
                        "imperial_infectious_disease_modelling_testing_user_ids",
                        "imperial_interventions_and_calibration_user_ids",
                        "imperial_intro_quality_improvement_healthcare_1_user_ids",
                        "imperial_introduction_participatory_approaches_public_health_user_ids",
                        "imperial_introduction_statistics_data_analysis_public_health_user_ids",
                        "imperial_introduction_to_digital_health_user_ids",
                        "imperial_introduction_to_health_systems_user_ids",
                        "imperial_lcph_gmph_user_ids",
                        "imperial_lifestyle_medicine_and_prevention_year_2_user_ids",
                        "imperial_lifestylemedicineandprevention_user_ids",
                        "imperial_lifestylemedicineandpreventionterm3_user_ids",
                        "imperial_linear_regression_r_public_health_user_ids",
                        "imperial_logistic_regression_r_public_health_user_ids",
                        "imperial_measuring_disease_epidemiology_user_ids",
                        "imperial_migration_health_user_ids",
                        "imperial_mishaps_failures_of_the_immune_system_user_ids",
                        "imperial_mph_disease_mooc4_user_ids" ,
                        "imperial_mphstatistics_mooc_5_user_ids",
                        "imperial_patients_communities_and_healthcare_year_2_user_ids" ,
                        "imperial_phi_gmph_user_ids",
                        "imperial_population_health_improvement_first_course_1_user_ids" ,
                        "imperial_public_health_epidemiology_first_course_1_user_ids" ,
                        "imperial_public_health_statistics_first_course_1_user_ids" ,
                        "imperial_public_involvement_in_research_user_ids",
                        "imperial_qih_mooc_4_user_ids",
                        "imperial_quality_improvement_for_population_health_user_ids" ,
                        "imperial_quality_improvement_in_healthcare_user_ids",
                        "imperial_research_portfolio_4_user_ids",
                        "imperial_research_portfolio_developing_a_research_question_user_ids",
                        "imperial_research_portfolio_mooc_1_user_ids" ,
                        "imperial_research_portfolio_qualitative_research_methods_user_ids",
                        "imperial_research_portfolio_quantitative_research_methods_user_ids" ,
                        "imperial_research_portfolio_systematic_reviews_and_meta_analyses_user_ids" ,
                        "imperial_resits_user_ids",
                        "imperial_rp1_gmph_user_ids",
                        "imperial_rp1_library_user_ids",
                        "imperial_rp1_on_campus_user_ids",
                        "imperial_rp2_gmph_user_ids",
                        "imperial_rp3_gmph_user_ids",
                        "imperial_school_of_public_health_induction_course_user_ids",
                        "imperial_specialised_defence_adaptive_immunity_user_ids",
                        "imperial_stats_gmph_user_ids",
                        "imperial_study_designs_epidemiology_user_ids",
                        "imperial_survival_analysis_r_public_health_user_ids",
                        "imperial_the_battle_within_autoimmunity_and_hyperresponsiveness_user_ids" ,
                        "imperial_the_public_health_toolkit_user_ids",
                        "imperial_tobacco_control_agile_policy_research_practice_user_ids",
                        "imperial_under_siege_immune_system_versus_infections_user_ids",
                        "imperial_using_data_for_healthcare_improvement_user_ids",
                        "imperial_validity_bias_epidemiology_user_ids"]


for x in range(len(course_user_ids_list)):
    course_user_ids_dataframes[x] = pd.read_csv(input_file_location + course_user_ids_list[x] + ".csv")
    imperial_course_user_ids = pd.merge(imperial_course_user_ids,  course_user_ids_dataframes[x], how="outer", on=["imperial_user_id"])

imperial_course_user_ids.to_csv(
    output_file_location + "imperial_course_user_ids.csv", index=False)


#output all dataframes to sensible location
for dataframe in dataframe_dict:
   dataframe_dict[dataframe].to_csv(output_file_location + "\\" + str(dataframe)+ '.csv')