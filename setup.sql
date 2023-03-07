/* Script for creating tables in a database for included export data. */
DROP TABLE IF EXISTS assessment_math_expression_questions;
DROP TABLE IF EXISTS notebook_workspace_launchers;
DROP TABLE IF EXISTS users_courses__s12n_enrollments;
DROP TABLE IF EXISTS assessment_text_exact_match_questions;
DROP TABLE IF EXISTS staff_graded_assignments;
DROP TABLE IF EXISTS discussion_answer_votes;
DROP TABLE IF EXISTS assessment_regex_patterns;
DROP TABLE IF EXISTS course_branch_items;
DROP TABLE IF EXISTS course_branch_modules;
DROP TABLE IF EXISTS course_item_grades;
DROP TABLE IF EXISTS assessments;
DROP TABLE IF EXISTS demographics_question_types;
DROP TABLE IF EXISTS staff_graded_assignment_submission_evaluations;
DROP TABLE IF EXISTS team_review_contents;
DROP TABLE IF EXISTS imperial_gdm_gmph_user_ids;
DROP TABLE IF EXISTS feedback_course_comments;
DROP TABLE IF EXISTS specializations;
DROP TABLE IF EXISTS programming_submission_part_grid_grading_statuses;
DROP TABLE IF EXISTS users_courses__certificate_payments;
DROP TABLE IF EXISTS course_branch_item_assessments;
DROP TABLE IF EXISTS programming_assignment_submission_schema_parts;
DROP TABLE IF EXISTS discussion_question_votes;
DROP TABLE IF EXISTS programming_submission_parts;
DROP TABLE IF EXISTS course_branches;
DROP TABLE IF EXISTS course_progress_learner_goals;
DROP TABLE IF EXISTS global_items;
DROP TABLE IF EXISTS assessment_text_exact_match_patterns;
DROP TABLE IF EXISTS course_item_passing_states;
DROP TABLE IF EXISTS assessment_checkbox_reflect_questions;
DROP TABLE IF EXISTS lti_tool_contents;
DROP TABLE IF EXISTS course_grades;
DROP TABLE IF EXISTS peer_submission_part_free_responses;
DROP TABLE IF EXISTS on_demand_sessions;
DROP TABLE IF EXISTS peer_reviews;
DROP TABLE IF EXISTS ecb_engines;
DROP TABLE IF EXISTS assessment_question_types;
DROP TABLE IF EXISTS ecb_evaluation_requests;
DROP TABLE IF EXISTS assessment_response_options;
DROP TABLE IF EXISTS reading_contents;
DROP TABLE IF EXISTS course_branch_lessons;
DROP TABLE IF EXISTS course_formative_quiz_grades;
DROP TABLE IF EXISTS feedback_item_comments;
DROP TABLE IF EXISTS assessment_mcq_questions;
DROP TABLE IF EXISTS assessment_actions;
DROP TABLE IF EXISTS course_memberships;
DROP TABLE IF EXISTS peer_skips;
DROP TABLE IF EXISTS programming_submission_part_grid_submissions;
DROP TABLE IF EXISTS staff_graded_assignment_final_grades;
DROP TABLE IF EXISTS course_branch_item_programming_assignments;
DROP TABLE IF EXISTS assessment_single_numeric_patterns;
DROP TABLE IF EXISTS peer_assignments;
DROP TABLE IF EXISTS course_progress_state_types;
DROP TABLE IF EXISTS on_demand_session_memberships;
DROP TABLE IF EXISTS course_passing_states;
DROP TABLE IF EXISTS assessment_regex_pattern_flags;
DROP TABLE IF EXISTS discussion_answers;
DROP TABLE IF EXISTS assessment_responses;
DROP TABLE IF EXISTS users_courses__degree_program_memberships;
DROP TABLE IF EXISTS discussion_course_forums;
DROP TABLE IF EXISTS discussion_questions;
DROP TABLE IF EXISTS assessment_types;
DROP TABLE IF EXISTS course_items;
DROP TABLE IF EXISTS peer_review_part_choices;
DROP TABLE IF EXISTS feedback_course_ratings;
DROP TABLE IF EXISTS course_item_programming_assignments;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS discussion_answer_flags;
DROP TABLE IF EXISTS notebook_workspaces;
DROP TABLE IF EXISTS staff_graded_assignments_evaluation_responses;
DROP TABLE IF EXISTS peer_submission_part_scores;
DROP TABLE IF EXISTS demographics_answers;
DROP TABLE IF EXISTS staff_graded_assignment_submissions;
DROP TABLE IF EXISTS demographics_choices;
DROP TABLE IF EXISTS lecture_contents;
DROP TABLE IF EXISTS programming_assignment_contents;
DROP TABLE IF EXISTS assessment_mcq_reflect_questions;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS global_item_types;
DROP TABLE IF EXISTS programming_submission_part_text_submissions;
DROP TABLE IF EXISTS assessment_scope_types;
DROP TABLE IF EXISTS assessment_regex_questions;
DROP TABLE IF EXISTS discussion_question_followings;
DROP TABLE IF EXISTS course_branch_item_peer_assignments;
DROP TABLE IF EXISTS demographics_questions;
DROP TABLE IF EXISTS feedback_item_ratings;
DROP TABLE IF EXISTS course_branch_grades;
DROP TABLE IF EXISTS programming_submission_part_evaluations;
DROP TABLE IF EXISTS assessment_math_expression_patterns;
DROP TABLE IF EXISTS course_progress;
DROP TABLE IF EXISTS assessment_response_patterns;
DROP TABLE IF EXISTS assessment_checkbox_questions;
DROP TABLE IF EXISTS peer_assignment_submission_schema_parts;
DROP TABLE IF EXISTS assessment_assessments_questions;
DROP TABLE IF EXISTS programming_assignments;
DROP TABLE IF EXISTS programming_submissions;
DROP TABLE IF EXISTS assessment_single_numeric_questions;
DROP TABLE IF EXISTS peer_submissions;
DROP TABLE IF EXISTS peer_submission_part_urls;
DROP TABLE IF EXISTS peer_comments;
DROP TABLE IF EXISTS assessment_pattern_types;
DROP TABLE IF EXISTS course_item_peer_assignments;
DROP TABLE IF EXISTS ecb_evaluators;
DROP TABLE IF EXISTS course_item_types;
DROP TABLE IF EXISTS assessment_pattern_flag_types;
DROP TABLE IF EXISTS programming_assignment_submission_schema_part_xbkvdx;
DROP TABLE IF EXISTS quiz_assessment_contents;
DROP TABLE IF EXISTS assessment_options;
DROP TABLE IF EXISTS peer_assignment_review_schema_parts;
DROP TABLE IF EXISTS course_lessons;
DROP TABLE IF EXISTS assessment_questions;
DROP TABLE IF EXISTS course_item_assessments;
DROP TABLE IF EXISTS specializations_courses;
DROP TABLE IF EXISTS peer_assignment_review_schema_part_options;
DROP TABLE IF EXISTS course_modules;
DROP TABLE IF EXISTS programming_assignment_submission_schema_part_grid_schemas;
DROP TABLE IF EXISTS peer_review_assignment_contents;
DROP TABLE IF EXISTS assessment_reflect_questions;
DROP TABLE IF EXISTS peer_review_part_free_responses;
DROP TABLE IF EXISTS discussion_question_flags;
CREATE TABLE discussion_question_flags (
    imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_question_id VARCHAR(50)
    ,discussion_question_flag_active BOOL
    ,discussion_question_flag_ts TIMESTAMP
    ,on_demand_session_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE peer_review_part_free_responses (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_review_id VARCHAR(50)
    ,peer_review_part_free_response_text VARCHAR(65535)
);
CREATE TABLE assessment_reflect_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_feedback VARCHAR(20000)
);
CREATE TABLE peer_review_assignment_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,peer_review_assign_assignment_id VARCHAR(255)
    ,peer_review_assign_is_graded BOOL
    ,peer_review_assign_required_reviews_count INT4
);
CREATE TABLE programming_assignment_submission_schema_part_grid_schemas (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_grid_gyd0w6 VARCHAR(65535)
    ,programming_assignment_submission_schema_part_grid_lb2xog VARCHAR(50)
    ,programming_assignment_submission_schema_part_grid_49aqrn VARCHAR(65535)
);
CREATE TABLE course_modules (
    course_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_module_order INT4
    ,course_module_name VARCHAR(2000)
    ,course_module_desc VARCHAR(10000)
);
CREATE TABLE peer_assignment_review_schema_part_options (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_assignment_review_schema_part_option_id VARCHAR(50)
    ,peer_assignment_review_schema_part_option_text VARCHAR(65535)
    ,peer_assignment_review_schema_part_option_score FLOAT8
);
CREATE TABLE specializations_courses (
    specialization_id VARCHAR(50)
    ,course_id VARCHAR(255)
    ,current_dt DATE
    ,course_order INT4
    ,is_course_capstone BOOL
);
CREATE TABLE course_item_assessments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
);
CREATE TABLE assessment_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_base_id VARCHAR(50)
    ,assessment_question_version INT4
    ,assessment_question_type_id INT4
    ,assessment_question_prompt VARCHAR(20000)
    ,assessment_question_update_ts TIMESTAMP
);
CREATE TABLE course_lessons (
    course_id VARCHAR(50)
    ,course_lesson_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_lesson_order INT4
    ,course_lesson_name VARCHAR(10000)
);
CREATE TABLE peer_assignment_review_schema_parts (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_assignment_review_schema_part_type VARCHAR(50)
    ,peer_assignment_review_schema_part_order INT4
    ,peer_assignment_review_schema_part_prompt VARCHAR(65535)
    ,peer_assignment_review_schema_part_maximum_score FLOAT8
    ,peer_assignment_submission_schema_part_id VARCHAR(255)
);
CREATE TABLE assessment_options (
    assessment_question_id VARCHAR(50)
    ,assessment_option_id VARCHAR(50)
    ,assessment_option_display VARCHAR(20000)
    ,assessment_option_feedback VARCHAR(20000)
    ,assessment_option_correct BOOL
    ,assessment_option_index INT4
);
CREATE TABLE quiz_assessment_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,assessment_id VARCHAR(255)
    ,quiz_question_count INT4
    ,quiz_is_graded BOOL
    ,quiz_passing_fraction FLOAT8
    ,quiz_max_score FLOAT8
    ,quiz_contains_widget_questions BOOL
);
CREATE TABLE programming_assignment_submission_schema_part_xbkvdx (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_m934n INT4
    ,programming_assignment_submission_schema_part_d4407a BOOL
    ,programming_assignment_submission_schema_part_mrj41 VARCHAR(65535)
    ,programming_assignment_submission_schema_part_2fyxz4 VARCHAR(65535)
);
CREATE TABLE assessment_pattern_flag_types (
    assessment_pattern_flag_type_id INT4
    ,assessment_pattern_flag_type_desc VARCHAR(50)
);
CREATE TABLE course_item_types (
    course_item_type_id INT4
    ,course_item_type_desc VARCHAR(255)
    ,course_item_type_category VARCHAR(255)
    ,course_item_type_graded BOOL
    ,global_item_content_type_id INT4
    ,deprecated BOOL
);
CREATE TABLE ecb_evaluators (
    course_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,ecb_evaluator_id VARCHAR(267)
    ,ecb_engine_id VARCHAR(255)
    ,ecb_evaluator_harness VARCHAR(65535)
);
CREATE TABLE course_item_peer_assignments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,peer_assignment_id VARCHAR(50)
);
CREATE TABLE assessment_pattern_types (
    assessment_pattern_type_id INT4
    ,assessment_pattern_type_desc VARCHAR(50)
);
CREATE TABLE peer_comments (
    peer_comment_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,imperial_peer_assignments_user_id VARCHAR(50) NOT NULL
    ,peer_comment_created_ts TIMESTAMP
    ,peer_comment_text VARCHAR(65535)
);
CREATE TABLE peer_submission_part_urls (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_submission_schema_part_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,peer_submission_part_url_url VARCHAR(65535)
    ,peer_submission_part_url_title VARCHAR(65535)
    ,peer_submission_part_url_description VARCHAR(65535)
);
CREATE TABLE peer_submissions (
    peer_submission_id VARCHAR(50)
    ,peer_assignment_id VARCHAR(50)
    ,imperial_peer_assignments_user_id VARCHAR(50) NOT NULL
    ,peer_submission_created_ts TIMESTAMP
    ,peer_submission_is_draft BOOL
    ,peer_submission_title VARCHAR(65535)
    ,peer_submission_removed_from_public_ts TIMESTAMP
    ,peer_submission_score_available_ts TIMESTAMP
    ,peer_submission_score FLOAT8
    ,peer_submission_is_mentor_graded BOOL
);
CREATE TABLE assessment_single_numeric_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
CREATE TABLE programming_submissions (
    programming_submission_id VARCHAR(50)
    ,programming_assignment_id VARCHAR(50)
    ,imperial_programming_assignments_user_id VARCHAR(50) NOT NULL
    ,programming_submission_created_ts TIMESTAMP
    ,programming_submission_type VARCHAR(50)
    ,programming_submission_grading_status VARCHAR(50)
    ,programming_submission_score INT4
    ,programming_submission_is_auto_submission BOOL
);
CREATE TABLE programming_assignments (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_base_id VARCHAR(50)
    ,programming_assignment_type VARCHAR(50)
    ,programming_assignment_submission_type VARCHAR(50)
    ,programming_assignment_instruction_text VARCHAR(65535)
    ,programming_assignment_passing_fraction FLOAT8
    ,programming_assignment_submission_builder_schema_type VARCHAR(50)
    ,programming_assignment_submission_builder_schema VARCHAR(65535)
    ,programming_assignment_update_ts TIMESTAMP
);
CREATE TABLE assessment_assessments_questions (
    assessment_id VARCHAR(50)
    ,assessment_question_id VARCHAR(50)
    ,assessment_question_internal_id VARCHAR(50)
    ,assessment_question_cuepoint INT4
    ,assessment_question_order INT4
    ,assessment_question_weight INT4
    ,assessment_question_extra_credit BOOL
);
CREATE TABLE peer_assignment_submission_schema_parts (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_submission_schema_part_id VARCHAR(255)
    ,peer_assignment_submission_schema_part_type VARCHAR(50)
    ,peer_assignment_submission_schema_part_order INT4
    ,peer_assignment_submission_schema_part_prompt VARCHAR(65535)
);
CREATE TABLE assessment_checkbox_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
    ,assessment_question_allow_partial_scoring BOOL
);
CREATE TABLE assessment_response_patterns (
    assessment_response_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_response_answer VARCHAR(10000)
    ,assessment_response_correct BOOL
    ,assessment_response_feedback VARCHAR(10000)
);
CREATE TABLE course_progress (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,course_progress_state_type_id INT4
    ,course_progress_ts TIMESTAMP
);
CREATE TABLE assessment_math_expression_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_display VARCHAR(20000)
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE programming_submission_part_evaluations (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_score INT4
    ,programming_submission_part_grading_ts TIMESTAMP
    ,programming_submission_part_feedback VARCHAR(65535)
);
CREATE TABLE course_branch_grades (
    course_branch_id VARCHAR(50)
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,course_branch_grade_ts TIMESTAMP
    ,course_passing_state_id INT4
    ,course_branch_grade_overall_passed_items INT4
    ,course_branch_grade_overall FLOAT4
);
CREATE TABLE feedback_item_ratings (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,feedback_unit_id VARCHAR(50)
    ,feedback_unit_type VARCHAR(50)
    ,feedback_system VARCHAR(100)
    ,imperial_feedback_user_id VARCHAR(50) NOT NULL
    ,feedback_rating INT4
    ,feedback_max_rating INT4
    ,detailed_context VARCHAR(200)
    ,feedback_ts TIMESTAMP
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE demographics_questions (
    question_id INT4
    ,question_type_id INT4
    ,question_desc VARCHAR(255)
);
CREATE TABLE course_branch_item_peer_assignments (
    course_branch_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,peer_assignment_id VARCHAR(50)
);
CREATE TABLE discussion_question_followings (
    imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_question_id VARCHAR(50)
    ,discussion_question_following_active BOOL
    ,discussion_question_following_ts TIMESTAMP
    ,on_demand_session_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE assessment_regex_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
CREATE TABLE assessment_scope_types (
    assessment_scope_type_id INT4
    ,assessment_scope_type_desc VARCHAR(255)
);
CREATE TABLE programming_submission_part_text_submissions (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_text_submission_answer VARCHAR(32767)
);
CREATE TABLE global_item_types (
    global_item_content_type_id INT4
    ,global_item_content_type VARCHAR(255)
    ,global_item_content_type_description VARCHAR(267)
    ,is_linkable BOOL
    ,is_deprecated BOOL
);
CREATE TABLE courses (
    course_id VARCHAR(255)
    ,course_slug VARCHAR(2000)
    ,course_name VARCHAR(2000)
    ,course_launch_ts TIMESTAMP
    ,course_update_ts TIMESTAMP
    ,course_deleted BOOL
    ,course_graded BOOL
    ,course_desc VARCHAR(10000)
    ,course_restricted BOOL
    ,course_verification_enabled_at_ts TIMESTAMP
    ,primary_translation_equivalent_course VARCHAR(50)
    ,course_preenrollment_ts TIMESTAMP
    ,estimated_work_load VARCHAR(100)
    ,sessions_enabled_at TIMESTAMP
    ,course_promo_photo_s3_bucket VARCHAR(255)
    ,course_promo_photo_s3_key VARCHAR(10000)
    ,course_level VARCHAR(50)
    ,course_planned_launch_date VARCHAR(255)
    ,course_header_image_bucket VARCHAR(255)
    ,course_header_image_key VARCHAR(10000)
    ,course_type VARCHAR(255)
    ,course_is_limited_to_enterprise BOOL
);
CREATE TABLE assessment_mcq_reflect_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
);
CREATE TABLE programming_assignment_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,program_assign_assignment_id VARCHAR(255)
    ,program_assign_is_graded BOOL
);
CREATE TABLE lecture_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,lecture_video_id VARCHAR(255)
    ,lecture_invideo_assessment_id VARCHAR(255)
    ,lecture_duration_ms INT8
);
CREATE TABLE demographics_choices (
    question_id INT4
    ,choice_id INT4
    ,choice_desc VARCHAR(255)
);
CREATE TABLE staff_graded_assignment_submissions (
    kvs_id VARCHAR(255)
    ,modified_ts TIMESTAMP
    ,staff_graded_assignment_id VARCHAR(255)
    ,staff_graded_assignment_version INT4
    ,is_draft BOOL
    ,team_version INT4
    ,submitted_by INT4
    ,submitted_at TIMESTAMP
    ,staff_graded_assignment_submission_id VARCHAR(255)
    ,deleted_at TIMESTAMP
    ,submitter_id VARCHAR(255)
    ,variant_selection_id VARCHAR(255)
    ,submitter_user VARCHAR(255)
    ,submitter_team VARCHAR(255)
    ,precondition_hash VARCHAR(1024)
    ,started_at TIMESTAMP
);
CREATE TABLE demographics_answers (
    question_id INT4
    ,imperial_demographics_user_id VARCHAR(50) NOT NULL
    ,submission_ts TIMESTAMP
    ,choice_id INT4
    ,answer_int INT4
);
CREATE TABLE peer_submission_part_scores (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_submission_id VARCHAR(50)
    ,peer_submission_part_score FLOAT8
);
CREATE TABLE staff_graded_assignments_evaluation_responses (
    course_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,coursera_user_id INT4
    ,assessment_title VARCHAR(10000)
    ,course_name VARCHAR(255)
    ,section_name VARCHAR(1024)
    ,assessment_submitted_ts TIMESTAMP
    ,learning_outcome_name VARCHAR(1024)
    ,learning_outcome_response_type VARCHAR(255)
    ,learning_outcome_type VARCHAR(128)
    ,outcome_score FLOAT8
    ,learning_outcome_max_score FLOAT8
    ,is_draft BOOL
    ,assessment_id VARCHAR(255)
    ,assessment_version INT4
    ,evaluated_by INT4
    ,evaluated_at TIMESTAMP
    ,submission_id VARCHAR(255)
    ,submitted_by INT4
    ,submitter_user VARCHAR(255)
    ,submitter_team VARCHAR(255)
);
CREATE TABLE notebook_workspaces (
    notebook_workspace_id VARCHAR(255)
    ,notebook_workspace_template_base_id TEXT
    ,notebook_workspace_created_ts TIMESTAMP
    ,imperial_user_id VARCHAR(50) NOT NULL
);
CREATE TABLE discussion_answer_flags (
    imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_answer_id VARCHAR(50)
    ,discussion_answer_flag_active BOOL
    ,discussion_answer_flag_ts TIMESTAMP
    ,on_demand_session_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE users (
    imperial_user_id VARCHAR(50) NOT NULL
    ,user_join_ts TIMESTAMP
    ,country_cd VARCHAR(2)
    ,region_cd VARCHAR(3)
    ,profile_language_cd VARCHAR(8)
    ,browser_language_cd VARCHAR(8)
    ,reported_or_inferred_gender VARCHAR(255)
    ,employment_status VARCHAR(100)
    ,educational_attainment VARCHAR(100)
    ,student_status VARCHAR(100)
);
CREATE TABLE course_item_programming_assignments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,programming_assignment_id VARCHAR(50)
);
CREATE TABLE feedback_course_ratings (
    course_id VARCHAR(50)
    ,imperial_feedback_user_id VARCHAR(50) NOT NULL
    ,feedback_system VARCHAR(100)
    ,feedback_rating INT4
    ,feedback_max_rating INT4
    ,feedback_ts TIMESTAMP
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE peer_review_part_choices (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_review_schema_part_id VARCHAR(255)
    ,peer_assignment_review_schema_part_option_id VARCHAR(50)
    ,peer_review_id VARCHAR(50)
);
CREATE TABLE course_items (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,course_lesson_id VARCHAR(50)
    ,course_item_order INT4
    ,course_item_type_id INT4
    ,course_item_name VARCHAR(10000)
    ,course_item_optional BOOL
);
CREATE TABLE assessment_types (
    assessment_type_id INT4
    ,assessment_type_desc VARCHAR(50)
);
CREATE TABLE discussion_questions (
    discussion_question_id VARCHAR(50)
    ,imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,discussion_question_title VARCHAR(60000)
    ,discussion_question_details VARCHAR(60000)
    ,discussion_question_context_type VARCHAR(50)
    ,course_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,discussion_forum_id VARCHAR(50)
    ,country_cd VARCHAR(2)
    ,group_id VARCHAR(50)
    ,discussion_question_created_ts TIMESTAMP
    ,discussion_question_updated_ts TIMESTAMP
);
CREATE TABLE discussion_course_forums (
    discussion_forum_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,discussion_course_forum_title VARCHAR(20000)
    ,discussion_course_forum_description VARCHAR(20000)
    ,discussion_course_forum_order INT4
);
CREATE TABLE users_courses__degree_program_memberships (
    imperial_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(255)
    ,degree_program_id VARCHAR(255)
    ,course_slug VARCHAR(255)
    ,degree_program_name VARCHAR(255)
    ,degree_program_slug VARCHAR(255)
    ,degree_program_type VARCHAR(50)
);
CREATE TABLE assessment_responses (
    assessment_response_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
    ,assessment_action_id VARCHAR(50)
    ,assessment_action_version INT4
    ,assessment_question_id VARCHAR(50)
    ,assessment_response_score FLOAT4
    ,assessment_response_weighted_score FLOAT4
);
CREATE TABLE discussion_answers (
    discussion_answer_id VARCHAR(50)
    ,imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_answer_content VARCHAR(60000)
    ,discussion_question_id VARCHAR(50)
    ,discussion_answer_parent_discussion_answer_id VARCHAR(50)
    ,discussion_answer_created_ts TIMESTAMP
    ,discussion_answer_updated_ts TIMESTAMP
    ,on_demand_session_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE assessment_regex_pattern_flags (
    assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_flag_type_id INT4
);
CREATE TABLE course_passing_states (
    course_passing_state_id INT4
    ,course_passing_state_desc VARCHAR(255)
);
CREATE TABLE on_demand_session_memberships (
    course_id VARCHAR(50)
    ,on_demand_session_id VARCHAR(50)
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,on_demand_sessions_membership_start_ts TIMESTAMP
    ,on_demand_sessions_membership_end_ts TIMESTAMP
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE course_progress_state_types (
    course_progress_state_type_id INT4
    ,course_progress_state_type_desc VARCHAR(255)
);
CREATE TABLE peer_assignments (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_base_id VARCHAR(50)
    ,peer_assignment_type VARCHAR(50)
    ,peer_assignment_required_review_count INT4
    ,peer_assignment_passing_fraction FLOAT8
    ,peer_assignment_required_reviewer_count_for_score INT4
    ,peer_assignment_required_wait_for_score_ms INT8
    ,peer_assignment_maximum_score FLOAT8
    ,peer_assignment_update_ts TIMESTAMP
    ,peer_assignment_is_mentor_graded BOOL
    ,peer_assignment_is_anonymous BOOL
);
CREATE TABLE assessment_single_numeric_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_type_id INT4
    ,assessment_pattern_value FLOAT8
    ,assessment_pattern_max FLOAT8
    ,assessment_pattern_min FLOAT8
    ,assessment_pattern_include_min BOOL
    ,assessment_pattern_include_max BOOL
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE course_branch_item_programming_assignments (
    course_branch_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,programming_assignment_id VARCHAR(50)
);
CREATE TABLE staff_graded_assignment_final_grades (
    course_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,assessment_title VARCHAR(10000)
    ,submission_score FLOAT8
    ,submission_max_score FLOAT8
    ,course_name VARCHAR(255)
    ,section_name VARCHAR(1024)
    ,assignment_url TEXT
    ,grade FLOAT8
    ,degree_program_slug VARCHAR(255)
    ,assignment_submitted_ts TIMESTAMP
    ,term_name VARCHAR(255)
    ,versioned_learner_item_evaluation_id VARCHAR(1024)
);
CREATE TABLE programming_submission_part_grid_submissions (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_grid_submission_url VARCHAR(65535)
    ,programming_submission_part_grid_submission_custom_cykkte VARCHAR(65535)
);
CREATE TABLE peer_skips (
    peer_skip_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,imperial_peer_assignments_user_id VARCHAR(50) NOT NULL
    ,peer_skip_created_ts TIMESTAMP
    ,peer_skip_type VARCHAR(50)
    ,peer_skip_text VARCHAR(65535)
);
CREATE TABLE course_memberships (
    imperial_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,course_membership_role VARCHAR(50)
    ,course_membership_ts TIMESTAMP
);
CREATE TABLE assessment_actions (
    assessment_action_id VARCHAR(50)
    ,assessment_action_base_id VARCHAR(50)
    ,assessment_id VARCHAR(50)
    ,assessment_scope_id VARCHAR(300)
    ,assessment_scope_type_id INT4
    ,assessment_action_version INT4
    ,assessment_action_ts TIMESTAMP
    ,assessment_action_start_ts TIMESTAMP
    ,guest_user_id VARCHAR(50)
    ,imperial_assessments_user_id VARCHAR(50) NOT NULL
);
CREATE TABLE assessment_mcq_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
);
CREATE TABLE feedback_item_comments (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,feedback_unit_id VARCHAR(50)
    ,feedback_unit_type VARCHAR(50)
    ,feedback_system VARCHAR(100)
    ,detailed_context VARCHAR(200)
    ,imperial_feedback_user_id VARCHAR(50) NOT NULL
    ,feedback_category VARCHAR(50)
    ,feedback_text VARCHAR(20000)
    ,feedback_ts TIMESTAMP
    ,feedback_active BOOL
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE course_formative_quiz_grades (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,course_quiz_grade_ts TIMESTAMP
    ,course_quiz_grade FLOAT4
    ,course_quiz_max_grade FLOAT4
);
CREATE TABLE course_branch_lessons (
    course_branch_id VARCHAR(50)
    ,course_lesson_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_branch_lesson_order INT4
    ,course_branch_lesson_name VARCHAR(10000)
);
CREATE TABLE reading_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,reading_asset_id VARCHAR(255)
    ,reading_base_id VARCHAR(50)
    ,reading_content VARCHAR(32000)
);
CREATE TABLE assessment_response_options (
    assessment_response_id VARCHAR(50)
    ,assessment_option_id VARCHAR(50)
    ,assessment_response_correct BOOL
    ,assessment_response_feedback VARCHAR(20000)
    ,assessment_response_selected BOOL
);
CREATE TABLE ecb_evaluation_requests (
    course_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,imperial_ecb_user_id VARCHAR(50) NOT NULL
    ,ecb_evaluator_id VARCHAR(267)
    ,ecb_evaluation_requested_ts TIMESTAMP
    ,ecb_evaluation_duration_ms INT8
    ,ecb_evaluation_expression VARCHAR(65535)
    ,ecb_evaluation_result VARCHAR(65535)
    ,ecb_evaluation_errors VARCHAR(65535)
    ,course_branch_id VARCHAR(255)
);
CREATE TABLE assessment_question_types (
    assessment_question_type_id INT4
    ,assessment_question_type_desc VARCHAR(50)
);
CREATE TABLE ecb_engines (
    ecb_engine_id VARCHAR(267)
    ,ecb_engine_name VARCHAR(1024)
    ,ecb_engine_updated_ts TIMESTAMP
    ,ecb_engine_memory_limit_mb INT4
    ,ecb_engine_timeout_ms INT8
    ,ecb_engine_disk_limit_mb INT4
    ,ecb_engine_cpu_limit INT4
);
CREATE TABLE peer_reviews (
    peer_review_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,imperial_peer_assignments_user_id VARCHAR(50) NOT NULL
    ,peer_review_created_ts TIMESTAMP
    ,peer_review_first_visible_to_submitter_ts TIMESTAMP
    ,peer_review_marked_helpful_ts TIMESTAMP
    ,peer_review_rated_ts TIMESTAMP
    ,peer_review_rating INT4
    ,peer_review_is_mentor_review BOOL
);
CREATE TABLE on_demand_sessions (
    course_id VARCHAR(50)
    ,on_demand_session_id VARCHAR(50)
    ,on_demand_sessions_start_ts TIMESTAMP
    ,on_demand_sessions_end_ts TIMESTAMP
    ,on_demand_sessions_enrollment_end_ts TIMESTAMP
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE peer_submission_part_free_responses (
    peer_assignment_id VARCHAR(50)
    ,peer_assignment_submission_schema_part_id VARCHAR(50)
    ,peer_submission_id VARCHAR(50)
    ,peer_submission_part_free_response_text VARCHAR(32767)
);
CREATE TABLE course_grades (
    course_id VARCHAR(50)
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,course_grade_ts TIMESTAMP
    ,course_passing_state_id INT4
    ,course_grade_overall_passed_items INT4
    ,course_grade_overall FLOAT4
    ,course_grade_verified_passed_items INT4
    ,course_grade_verified FLOAT4
);
CREATE TABLE lti_tool_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,tool_id VARCHAR(255)
    ,is_graded BOOL
    ,lti_tool_version INT4
    ,lti_tool_name VARCHAR(1000)
    ,lti_tool_description VARCHAR(16000)
    ,lti_tool_endpoint_url VARCHAR(2000)
    ,lti_tool_privacy_level VARCHAR(40)
    ,lti_tool_modified_ts TIMESTAMP
    ,lti_tool_custom_parameters VARCHAR(2000)
    ,lti_tool_passing_fraction FLOAT8
    ,lti_tool_cml_content VARCHAR(10000)
);
CREATE TABLE assessment_checkbox_reflect_questions (
    assessment_question_id VARCHAR(50)
    ,assessment_question_shuffle_options BOOL
);
CREATE TABLE course_item_passing_states (
    course_item_passing_state_id INT4
    ,course_item_passing_state_desc VARCHAR(255)
);
CREATE TABLE assessment_text_exact_match_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_display VARCHAR(20000)
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE global_items (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,global_item_name VARCHAR(255)
    ,is_global_item_version_latest BOOL
    ,global_item_interaction_id VARCHAR(255)
    ,is_global_item_graded BOOL
    ,global_item_content_type VARCHAR(255)
    ,global_item_content_type_id INT4
    ,global_item_time_commitment FLOAT8
);
CREATE TABLE course_progress_learner_goals (
    course_id VARCHAR(50)
    ,course_branch_id TEXT
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,created_at VARCHAR(1024)
    ,goal_uuid VARCHAR(1024)
    ,goal_name TEXT
    ,goal_status TEXT
);
CREATE TABLE course_branches (
    course_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,course_branch_changes_description VARCHAR(65535)
    ,authoring_course_branch_name VARCHAR(255)
    ,authoring_course_branch_created_ts TIMESTAMP
    ,authoring_course_branch_launched_ts TIMESTAMP
);
CREATE TABLE programming_submission_parts (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_type VARCHAR(50)
);
CREATE TABLE discussion_question_votes (
    imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_question_id VARCHAR(50)
    ,discussion_question_vote_value INT4
    ,discussion_question_vote_ts TIMESTAMP
    ,on_demand_session_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE programming_assignment_submission_schema_parts (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_title VARCHAR(65535)
    ,programming_assignment_submission_schema_part_type VARCHAR(50)
    ,programming_assignment_submission_schema_part_order INT4
    ,programming_assignment_submission_schema_part_max_score INT4
    ,programming_assignment_submission_schema_part_is_optional BOOL
    ,programming_assignment_submission_schema_part_xacgt8 INT4
    ,programming_assignment_submission_schema_default_g663i6 VARCHAR(65535)
);
CREATE TABLE course_branch_item_assessments (
    course_branch_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,assessment_id VARCHAR(50)
);
CREATE TABLE users_courses__certificate_payments (
    imperial_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,met_payment_condition BOOL
    ,was_payment BOOL
    ,was_finaid_grant BOOL
    ,was_group_sponsored BOOL
);
CREATE TABLE programming_submission_part_grid_grading_statuses (
    programming_assignment_id VARCHAR(50)
    ,programming_assignment_submission_schema_part_id VARCHAR(50)
    ,programming_submission_id VARCHAR(50)
    ,programming_submission_part_grid_grading_status_pgrtf5 VARCHAR(50)
    ,programming_submission_part_grid_grading_status_x21exo TIMESTAMP
    ,programming_submission_part_grid_grading_status_jzmjz1 VARCHAR(50)
);
CREATE TABLE specializations (
    specialization_id VARCHAR(50)
    ,specialization_slug VARCHAR(255)
    ,specialization_name VARCHAR(2000)
    ,specialization_display_page_launch_ts TIMESTAMP
    ,sequence_branch_id VARCHAR(255)
    ,specialization_version INT8
    ,base_specialization_id VARCHAR(255)
    ,specialization_primary_domain VARCHAR(255)
    ,specialization_primary_subdomain VARCHAR(255)
    ,specialization_language VARCHAR(255)
    ,premium_grading_enabled_courses_count INT8
    ,specialization_type VARCHAR(1024)
);
CREATE TABLE feedback_course_comments (
    course_id VARCHAR(50)
    ,feedback_system VARCHAR(100)
    ,imperial_feedback_user_id VARCHAR(50) NOT NULL
    ,feedback_category VARCHAR(50)
    ,feedback_text VARCHAR(20000)
    ,feedback_ts TIMESTAMP
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE imperial_gdm_gmph_user_ids (
    imperial_user_id VARCHAR(50) NOT NULL
    ,gdm_gmph_user_id VARCHAR(50) NOT NULL
    ,PRIMARY KEY (imperial_user_id)
    ,FOREIGN KEY (imperial_user_id) REFERENCES users(imperial_user_id)
);
CREATE TABLE team_review_contents (
    global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,team_review_assignment_id VARCHAR(255)
    ,team_review_passing_fraction FLOAT4
);
CREATE TABLE staff_graded_assignment_submission_evaluations (
    kvs_id VARCHAR(255)
    ,staff_graded_assignment_submission_evaluation_version INT4
    ,modified_ts TIMESTAMP
    ,staff_graded_assignment_submission_id VARCHAR(255)
    ,evaluated_by INT4
    ,evaluated_at TIMESTAMP
    ,staff_graded_assignment_id VARCHAR(255)
    ,staff_graded_assignment_version INT4
    ,staff_graded_assignment_submission_evaluation_id VARCHAR(255)
    ,precondition VARCHAR(1024)
    ,precondition_hash VARCHAR(255)
    ,submitter_id VARCHAR(255)
    ,completed_at TIMESTAMP
);
CREATE TABLE demographics_question_types (
    question_type_id INT4
    ,question_type_desc VARCHAR(25)
);
CREATE TABLE assessments (
    assessment_id VARCHAR(50)
    ,assessment_base_id VARCHAR(50)
    ,assessment_version INT4
    ,assessment_type_id INT4
    ,assessment_update_ts TIMESTAMP
    ,assessment_passing_fraction FLOAT4
    ,assessment_feedback_configuration VARCHAR(50)
);
CREATE TABLE course_item_grades (
    course_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,imperial_user_id VARCHAR(50) NOT NULL
    ,course_item_grade_ts TIMESTAMP
    ,course_item_passing_state_id INT4
    ,course_item_grade_overall FLOAT4
);
CREATE TABLE course_branch_modules (
    course_branch_id VARCHAR(50)
    ,course_module_id VARCHAR(50)
    ,course_branch_module_order INT4
    ,course_branch_module_name VARCHAR(2000)
    ,course_branch_module_desc VARCHAR(10000)
);
CREATE TABLE course_branch_items (
    course_branch_id VARCHAR(255)
    ,course_item_id VARCHAR(255)
    ,course_branch_atom_is_frozen BOOL
    ,course_branch_item_name VARCHAR(255)
    ,is_graded BOOL
    ,course_item_type_id INT4
    ,interaction_id VARCHAR(306)
    ,course_branch_item_optional BOOL
    ,course_lesson_id VARCHAR(255)
    ,course_branch_item_order INT4
    ,is_in_honor_lesson BOOL
    ,course_branch_item_lecture_duration_ms INT8
    ,quiz_assessment_id VARCHAR(255)
    ,quiz_is_graded BOOL
    ,global_item_id VARCHAR(255)
    ,global_item_version INT4
    ,is_global_item_version_frozen BOOL
    ,global_item_time_commitment FLOAT8
    ,item_weight_in_course_branch_percentage FLOAT8
);
CREATE TABLE assessment_regex_patterns (
    assessment_question_id VARCHAR(50)
    ,assessment_pattern_id VARCHAR(50)
    ,assessment_pattern_regex VARCHAR(20000)
    ,assessment_pattern_feedback VARCHAR(20000)
    ,assessment_pattern_correct BOOL
);
CREATE TABLE discussion_answer_votes (
    imperial_discussions_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(50)
    ,discussion_answer_id VARCHAR(50)
    ,discussion_answer_vote_value INT4
    ,discussion_answer_vote_ts TIMESTAMP
    ,on_demand_session_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
);
CREATE TABLE staff_graded_assignments (
    course_branch_id VARCHAR(255)
    ,course_id VARCHAR(50)
    ,staff_graded_assignment_id VARCHAR(255)
    ,staff_graded_assignment_version INT4
    ,staff_graded_assignment_ts TIMESTAMP
    ,grading_passing_fraction FLOAT8
    ,is_team_submission_enabled BOOL
    ,grader_instructions VARCHAR(7000)
);
CREATE TABLE assessment_text_exact_match_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
CREATE TABLE users_courses__s12n_enrollments (
    imperial_user_id VARCHAR(50) NOT NULL
    ,course_id VARCHAR(255)
    ,specialization_id VARCHAR(50)
    ,is_specialization_enrollment_complete BOOL
);
CREATE TABLE notebook_workspace_launchers (
    course_id VARCHAR(50)
    ,course_branch_id VARCHAR(50)
    ,course_item_id VARCHAR(50)
    ,notebook_workspace_launcher_id VARCHAR(255)
    ,notebook_workspace_launch_path VARCHAR(255)
    ,notebook_workspace_template_base_id VARCHAR(255)
);
CREATE TABLE assessment_math_expression_questions (
    assessment_question_id VARCHAR(50)
    ,default_incorrect_feedback VARCHAR(20000)
);
COMMENT ON TABLE discussion_question_flags IS 'records when an discussion question is flagged as resolved';
COMMENT ON COLUMN discussion_question_flags.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_question_flags.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN discussion_question_flags.discussion_question_id IS 'The id of the discussion question';
COMMENT ON COLUMN discussion_question_flags.discussion_question_flag_active IS 'whether or not the flag is active';
COMMENT ON COLUMN discussion_question_flags.discussion_question_flag_ts IS 'timestamp of flagging';
COMMENT ON COLUMN discussion_question_flags.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN discussion_question_flags.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE peer_review_part_free_responses IS 'Answers to free response review schema questions ("singleLineInput" and "multiLineInput")';
COMMENT ON COLUMN peer_review_part_free_responses.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_review_part_free_responses.peer_assignment_review_schema_part_id IS 'The part of the review schema that this answer applies to';
COMMENT ON COLUMN peer_review_part_free_responses.peer_review_id IS 'The review that this answer is part of';
COMMENT ON COLUMN peer_review_part_free_responses.peer_review_part_free_response_text IS 'The answer';
COMMENT ON TABLE assessment_reflect_questions IS 'Information of ungraded text entry question';
COMMENT ON COLUMN assessment_reflect_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_reflect_questions.assessment_question_feedback IS 'No column description available';
COMMENT ON TABLE peer_review_assignment_contents IS 'This table contains global item content for peer review';
COMMENT ON COLUMN peer_review_assignment_contents.global_item_id IS 'Globally unique ID for global-item (independently sharable item contents unit)';
COMMENT ON COLUMN peer_review_assignment_contents.global_item_version IS 'Version ID for the global-item. Global item Contents are immutable, so when changes are made a new global_item_version_id is issued that is 1 greater than the previous version. version IDs start at 1.';
COMMENT ON COLUMN peer_review_assignment_contents.peer_review_assign_assignment_id IS ' reference to `peer_assignment_review_schema_parts.peer_assignment_id`';
COMMENT ON COLUMN peer_review_assignment_contents.peer_review_assign_is_graded IS 'Whether the peer review is graded or not';
COMMENT ON COLUMN peer_review_assignment_contents.peer_review_assign_required_reviews_count IS 'Number of required reviews';
COMMENT ON TABLE programming_assignment_submission_schema_part_grid_schemas IS 'Information of asynchronously graded parts of programming assignments';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_id IS 'The universal Id of the programming assignment.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_id IS 'The universal Id of the assignment part';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_grid_gyd0w6 IS 'Expected file name. Name shortened from ''programming_assignment_submission_schema_part_grid_schema_expected_file_name'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_grid_lb2xog IS 'The universal Id of the part executor in Grid. Name shortened from ''programming_assignment_submission_schema_part_grid_schema_executor_id'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_grid_schemas.programming_assignment_submission_schema_part_grid_49aqrn IS 'Custom grid grader parameters. Name shortened from ''programming_assignment_submission_schema_part_grid_custom_grader_parameters'' for compatibility.';
COMMENT ON TABLE course_modules IS '(Deprecated, Please use prod.course_branch_modules) Contains each course''s set of modules, their names, their description, and their order.
Note: For courses that use the Course Versioning feature, please refer to the branch version of this table.';
COMMENT ON COLUMN course_modules.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_modules.course_module_id IS 'Foreign Key Documentation from prod.course_modules(course_module_id):';
COMMENT ON COLUMN course_modules.course_module_order IS 'The order of a module within a particular course, with "0" indicating the first module in the course. ';
COMMENT ON COLUMN course_modules.course_module_name IS 'The name of a module, as seen in the learner view of the course. ';
COMMENT ON COLUMN course_modules.course_module_desc IS 'The description of the module, seen as the note to learners above the module in the learner view of the course. ';
COMMENT ON TABLE peer_assignment_review_schema_part_options IS 'The options for review schema parts that have options';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_id IS 'The assignment that this option is in';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_id IS 'The schema part that this option is for';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_option_id IS 'This option''s id within the part';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_option_text IS 'The text of this option';
COMMENT ON COLUMN peer_assignment_review_schema_part_options.peer_assignment_review_schema_part_option_score IS 'The score of this option. Note that this is nullable because not all options make scores.';
COMMENT ON TABLE specializations_courses IS 'This table contains the mapping between specializations and courses';
COMMENT ON COLUMN specializations_courses.specialization_id IS 'Unique ID for a Coursera specialization. Non-base specialization versions begin with a prefix of ''child~''';
COMMENT ON COLUMN specializations_courses.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN specializations_courses.current_dt IS 'Date of file import. Can be used to identify changes in course-specialization mapping from one day to another';
COMMENT ON COLUMN specializations_courses.course_order IS 'Order in which the courses appear in a specialization.';
COMMENT ON COLUMN specializations_courses.is_course_capstone IS 'No column description available';
COMMENT ON TABLE course_item_assessments IS 'For each course, provide the mapping between course items and versioned assessments.';
COMMENT ON COLUMN course_item_assessments.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_item_assessments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_item_assessments.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON TABLE assessment_questions IS 'Information of quiz questions';
COMMENT ON COLUMN assessment_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_questions.assessment_question_base_id IS 'No column description available';
COMMENT ON COLUMN assessment_questions.assessment_question_version IS 'the version of the question';
COMMENT ON COLUMN assessment_questions.assessment_question_type_id IS '	
A numerical identifier correspnding to each of the assessment question types described by the assessment_question_type_desc field';
COMMENT ON COLUMN assessment_questions.assessment_question_prompt IS 'The raw text data of the question prompt. This may contain additional markup language for formatting purposes.';
COMMENT ON COLUMN assessment_questions.assessment_question_update_ts IS 'When the question was updated';
COMMENT ON TABLE course_lessons IS '(Deprecated, Please use prod.course_branch_lessons) Subsection of a single module, can be composed of multiple items in a course.
Note: For courses that uses the Course Versioning feature, please refer to the branch version of this table.';
COMMENT ON COLUMN course_lessons.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_lessons.course_lesson_id IS 'Lesson id that is unique within a single course.';
COMMENT ON COLUMN course_lessons.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN course_lessons.course_lesson_order IS 'The order of a lesson within a particular module, with "0" indicating the first lesson in a module. ';
COMMENT ON COLUMN course_lessons.course_lesson_name IS 'The name of a lesson, as seen in the learner view of the course. ';
COMMENT ON TABLE peer_assignment_review_schema_parts IS 'The questions that the reviewer must answer';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_id IS 'Assignment that this review schema part lives in';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_id IS 'This part''s id within the assignment';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_type IS 'The type ("multiLineInput", "options", "singleLineInput", "yesNo")';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_order IS 'The order within the assignment (lowest comes first)';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_prompt IS 'The prompt (a question for the reviewer to answer)';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_review_schema_part_maximum_score IS 'The maximum score that this part can give. This is nullable because not all parts generate scores';
COMMENT ON COLUMN peer_assignment_review_schema_parts.peer_assignment_submission_schema_part_id IS '[NULLABLE] If present, it means this rubric item is tied to a specific submission part. Otherwise, the rubric item relates to the assignment as a whole. ';
COMMENT ON TABLE assessment_options IS 'Information of choice options for a question';
COMMENT ON COLUMN assessment_options.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_options.assessment_option_id IS 'unique choice option ids of a question';
COMMENT ON COLUMN assessment_options.assessment_option_display IS 'The JSON blob containing the question prompt. This is written in a custom Coursera markup language. The actual prompt text is encapsulated within key named "value."';
COMMENT ON COLUMN assessment_options.assessment_option_feedback IS 'The text that is displayed to learners upon answering a question correctly';
COMMENT ON COLUMN assessment_options.assessment_option_correct IS 'For text answer type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON COLUMN assessment_options.assessment_option_index IS 'Index of the option within the question. Starts at 0, which is the top option.
If the question is shuffled, the index may not match the order the learner sees when answering.';
COMMENT ON TABLE quiz_assessment_contents IS 'Provides more details about quizzes, both graded and practice (ungraded). Can be joined with the table global_items using global_item_id, and can be joined with course_branch_items using quiz_assessment_id and/or (global_item_id,global_item_version).';
COMMENT ON COLUMN quiz_assessment_contents.global_item_id IS 'Globally unique item ID.';
COMMENT ON COLUMN quiz_assessment_contents.global_item_version IS 'Version of the item. Since global items are immutable, every change published results in incrementing this number.';
COMMENT ON COLUMN quiz_assessment_contents.assessment_id IS 'Globally unique Assessment ID';
COMMENT ON COLUMN quiz_assessment_contents.quiz_question_count IS 'Number of questions in this quiz.';
COMMENT ON COLUMN quiz_assessment_contents.quiz_is_graded IS 'TRUE if quiz grade is counted toward course grade.';
COMMENT ON COLUMN quiz_assessment_contents.quiz_passing_fraction IS 'Fraction of score required to pass the quiz. Multiply by 100.00 to get percentage.';
COMMENT ON COLUMN quiz_assessment_contents.quiz_max_score IS 'Max score possible on this quiz.';
COMMENT ON COLUMN quiz_assessment_contents.quiz_contains_widget_questions IS 'TRUE if quiz utilizes a plugin/widget.';
COMMENT ON TABLE programming_assignment_submission_schema_part_xbkvdx IS 'possible correct responses to a part of a programming assignment. Name shortened from ''programming_assignment_submission_schema_part_possible_responses'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_id IS 'The universal Id of the programming assignment';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_id IS 'The universal Id of a programming assignment part.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_m934n IS 'The order of the possible response in the programming assignment. Name shortened from ''programming_assignment_submission_schema_part_possible_response_order'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_d4407a IS 'The result of the possible response. Name shortened from ''programming_assignment_submission_schema_part_possible_response_is_correct'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_mrj41 IS 'The feedback of the possible response. Name shortened from ''programming_assignment_submission_schema_part_possible_response_feedback'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_part_xbkvdx.programming_assignment_submission_schema_part_2fyxz4 IS 'Numeric type convert By Internal Class. For example, Internal(2, 3, true, false) -> [2, 3),
 Regex type convert by AnswerPattern Class. Name shortened from ''programming_assignment_submission_schema_part_possible_response_answers'' for compatibility.';
COMMENT ON TABLE assessment_pattern_flag_types IS 'Information on pattern flag types';
COMMENT ON COLUMN assessment_pattern_flag_types.assessment_pattern_flag_type_id IS 'ID for a pattern flag type';
COMMENT ON COLUMN assessment_pattern_flag_types.assessment_pattern_flag_type_desc IS 'A description, e.g 2 = ''CASE_INSENSITIVE'', 32 = ''DOTALL''';
COMMENT ON TABLE course_item_types IS 'If possible, prefer to use global_item_types instead.
---
There are many different types of of items that make up a course. Each item is given an
item_type_id for ease of identification. Note that adding a new item type is a relatively
rare event, so it''s reasonable for this table to not receive regular updates.
---
This table represents the non-global item type categorization. When we moved
to global items, several of the features were consolidated (such as graded vs ungraded, and
variations of peer reviews). To view the types used for all items represented as global items
please use global_item_types and the field global_item_content_type_id. A column
linking the non global item type to its global item type is provided here for convenience.';
COMMENT ON COLUMN course_item_types.course_item_type_id IS 'There are many different types of of items that make up a course. Each item is given an item_type_id for ease of identification. ';
COMMENT ON COLUMN course_item_types.course_item_type_desc IS 'The description attempts to describe the item in a few words (for example, "graded programming" or "exam"). ';
COMMENT ON COLUMN course_item_types.course_item_type_category IS 'There are a variety of different categories that course items fall into, currently: lecture, supplemental item (ie, reading), quiz, peer review, and programming. Within each of these categories, there is the potential to have various item types, which allow for different handling of the items (for example, formative vs summative assignments and open vs closed peer reviews).';
COMMENT ON COLUMN course_item_types.course_item_type_graded IS 'An item can be either graded ("true", which means it is required that a learner pass the item to pass the course) or not ("false", which means it is either an assessment that allows the learner to practice their skills, such as a practice quiz, or an item that provides information, such as a lecture or reading, regardless it is an optional item). ';
COMMENT ON COLUMN course_item_types.global_item_content_type_id IS 'Item Content Type ID. Join with global_item_types.';
COMMENT ON COLUMN course_item_types.deprecated IS 'TRUE if this item type is deprecated - cannot create new items of this type, and intend to migrate or delete existing items.';
COMMENT ON TABLE ecb_evaluators IS 'Executable code block evaluators define how input from learners will be evaluated. At a high level, evaluators include a reference to a language-specific ''engine'', and a ''harness'' definition that parameterizes the execution mode - for example graded feedback vs. simple execution.';
COMMENT ON COLUMN ecb_evaluators.course_id IS 'Globally unique Course ID';
COMMENT ON COLUMN ecb_evaluators.course_item_id IS 'Identifier for an item within a course. Unique only within the context of a course_id.';
COMMENT ON COLUMN ecb_evaluators.ecb_evaluator_id IS 'Unique, versioned id for the evaluator.';
COMMENT ON COLUMN ecb_evaluators.ecb_engine_id IS 'Versioned id for the engine used by the evaluator.';
COMMENT ON COLUMN ecb_evaluators.ecb_evaluator_harness IS 'JSON-formatted harness configuration for evaluation requests. Harness types include "TestCaseHarness" and "REPLHarness" types, which define graded feedback and simple evaluation modes, respectively.';
COMMENT ON TABLE course_item_peer_assignments IS 'For each course, provide the mapping between course items and versioned peer assignments.';
COMMENT ON COLUMN course_item_peer_assignments.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_item_peer_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_item_peer_assignments.peer_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE assessment_pattern_types IS 'Info on pattern matching questions: Text Answer, Numeric, Regular Expression, and Math Expression';
COMMENT ON COLUMN assessment_pattern_types.assessment_pattern_type_id IS 'No column description available';
COMMENT ON COLUMN assessment_pattern_types.assessment_pattern_type_desc IS 'Our assessments system defines three types of pattern matching questions: Text Answer, Numeric, Regular Expression, and Math Expression. ';
COMMENT ON TABLE peer_comments IS 'This table contains peer comments for peer review assignment.
Each row is a peer review comment when a given learner can leave a comment on a peer submission when reviewing. It contains:
- Peer comment id - unique uuid
- Peer submission id - submission id where learner reviews
- User id - author of the comment
- Peer comment created timestamp - comment created timestamp
- Peer comment text - stored as a plain string
A record is created whenever a new peer comment is given. Learner does not have ability to edit comment after submitting.
Peer comment id is unique key, while multiple peer comment id can reference to the same peer submission id.
Deletion of peer comment records is not expected.
Source data:
peer_cmnt';
COMMENT ON COLUMN peer_comments.peer_comment_id IS 'primary key (UUID)';
COMMENT ON COLUMN peer_comments.peer_submission_id IS 'Peer submission id where learner gives comment';
COMMENT ON COLUMN peer_comments.imperial_peer_assignments_user_id IS 'Encrypted Coursera user id for imperial peer_assignments data.';
COMMENT ON COLUMN peer_comments.peer_comment_created_ts IS 'The time when the comment was created. The comment never changes after creation';
COMMENT ON COLUMN peer_comments.peer_comment_text IS 'Plain text of peer comment';
COMMENT ON TABLE peer_submission_part_urls IS 'Answers to the submission schema questions, for the "fileUpload" and "url" submission schema part types';
COMMENT ON COLUMN peer_submission_part_urls.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_submission_part_urls.peer_assignment_submission_schema_part_id IS 'The part of the submission schema that this answer applies to';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_id IS 'The submission that this answer is part of';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_part_url_url IS 'The url link of the answer';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_part_url_title IS 'The url title of the answer';
COMMENT ON COLUMN peer_submission_part_urls.peer_submission_part_url_description IS 'The url description of the answer';
COMMENT ON TABLE peer_submissions IS 'Submissions to peer assignments.
Caveats: This table contains public submissions, draft submissions, and deleted submissions. Use the peer_submission_is_draft and peer_submission_has_been_removed_from_public columns to disambiguate
A record is created whenever a peer review submission is submitted or a peer review submission draft is saved or its review process is completed.
When a learner makes update on peer submission, new record is created based on submission type.
Deletion of peer assignment submission records is not expected.
Source table:
prod.peer_submissions_no_scores
prod.peer_submission_scores
Downstream table:
bi.user_peer_review_submissions
bi.peer_submissions
bi.core_enrollments
bi.peer_assignment_daily_monitor
scratch.jchavern_tii_scanned_submissions_w_flags
scratch.jchavern_duplicated_peer_submissions
bi.current_mentors
bi.epic_enrollment_results_assessments
prod.peer_review_part_choices
prod.peer_review_part_free_responses
prod.peer_submission_part_scores
bi.peer_review_submission_interaction_evidence
bi.epic_user_results_assessments
bi.phased_peer_review
scratch.user_course_item_grades_workaround
bi.user_course_item_grades
pii.enterprise_attempts_gradebook
Courier model:
SubmissionV2';
COMMENT ON COLUMN peer_submissions.peer_submission_id IS 'Peer submission id';
COMMENT ON COLUMN peer_submissions.peer_assignment_id IS 'The assignment that this submission is for';
COMMENT ON COLUMN peer_submissions.imperial_peer_assignments_user_id IS 'Encrypted Coursera user id for imperial peer_assignments data.';
COMMENT ON COLUMN peer_submissions.peer_submission_created_ts IS 'The time that this submission was created. The submission itself never changes after creation, but some columns affected by things outside the submission may change after creation: (i) `peer_submission_removed_from_public_ts` changes from NULL to non-NULL if/when the author removes the submission from the public (ii) `peer_submission_score_available_ts` and `peer_submission_score` change from NULL to non-NULL if/when the submission receives a score';
COMMENT ON COLUMN peer_submissions.peer_submission_is_draft IS 'Whether this submission is a draft. Drafts are not visible to anyone except the author';
COMMENT ON COLUMN peer_submissions.peer_submission_title IS 'The "title" field of the submission';
COMMENT ON COLUMN peer_submissions.peer_submission_removed_from_public_ts IS 'When this submission was removed from the public review area. This is NULL for public submissions that haven''t been removed. This is also NULL for drafts because they were never in the public review area';
COMMENT ON COLUMN peer_submissions.peer_submission_score_available_ts IS 'The first time at which the score for this submission was available. This is NULL for submissions without scores and for assignments that don''t generate scores. Note currently (2016-01) there is a lag between a submission get all reviews needed and peer_submission_score_available_ts. And for learners who submit by review deadline, they willl get be graded even if not meeting N-review requirement, as long as at least being reviewed once(under which scenario, this timestamp will be past review deadline).';
COMMENT ON COLUMN peer_submissions.peer_submission_score IS 'The submission''s score. This is NULL for submissions without scores and for assignments that don''t generate scores';
COMMENT ON COLUMN peer_submissions.peer_submission_is_mentor_graded IS 'This field is default to false';
COMMENT ON TABLE assessment_single_numeric_questions IS 'Information of single numeric (Numeric match) questions';
COMMENT ON COLUMN assessment_single_numeric_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_single_numeric_questions.default_incorrect_feedback IS 'The default feedback to the learner should the learner answer the question incorrectly';
COMMENT ON TABLE programming_submissions IS 'submissions of a programming assignment';
COMMENT ON COLUMN programming_submissions.programming_submission_id IS 'The unversioned id.';
COMMENT ON COLUMN programming_submissions.programming_assignment_id IS 'The assignment that this submission is for.
';
COMMENT ON COLUMN programming_submissions.imperial_programming_assignments_user_id IS 'Encrypted Coursera user id for imperial programming_assignments data.';
COMMENT ON COLUMN programming_submissions.programming_submission_created_ts IS 'The timestamp of this submission.';
COMMENT ON COLUMN programming_submissions.programming_submission_type IS 'Type("multipart")';
COMMENT ON COLUMN programming_submissions.programming_submission_grading_status IS 'Status("started", "successed", "failed")';
COMMENT ON COLUMN programming_submissions.programming_submission_score IS 'No column description available';
COMMENT ON COLUMN programming_submissions.programming_submission_is_auto_submission IS 'Is ''true'' when submission was made as an autosubmission, and false otherwise. For entries before June 2022, it will be NULL';
COMMENT ON TABLE programming_assignments IS 'Information of programming assignments';
COMMENT ON COLUMN programming_assignments.programming_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON COLUMN programming_assignments.programming_assignment_base_id IS 'None versioned id';
COMMENT ON COLUMN programming_assignments.programming_assignment_type IS 'The type ("standard", "graded", "closed").';
COMMENT ON COLUMN programming_assignments.programming_assignment_submission_type IS 'The type ("mulitpart")';
COMMENT ON COLUMN programming_assignments.programming_assignment_instruction_text IS 'The CML Instruction content';
COMMENT ON COLUMN programming_assignments.programming_assignment_passing_fraction IS 'Fraction of the maximum possible score that you must achieve in order to pass. This only exists for assignments that generate scores.';
COMMENT ON COLUMN programming_assignments.programming_assignment_submission_builder_schema_type IS 'No column description available';
COMMENT ON COLUMN programming_assignments.programming_assignment_submission_builder_schema IS 'No column description available';
COMMENT ON COLUMN programming_assignments.programming_assignment_update_ts IS 'When this version of the assignment was created.';
COMMENT ON TABLE assessment_assessments_questions IS 'Link table between the assessment and the questions data and describe high-level information of questions in an assessment.';
COMMENT ON COLUMN assessment_assessments_questions.assessment_id IS 'The id that uniquely identifies an assessment';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_internal_id IS 'No column description available';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_cuepoint IS 'The number of milliseconds into a lecture video that the in-video question is placed. For quizzes that are not in-video quizzes, it is 0.';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_order IS 'Order in which the questions are asked in the assessment.';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_weight IS 'No column description available';
COMMENT ON COLUMN assessment_assessments_questions.assessment_question_extra_credit IS 'No column description available';
COMMENT ON TABLE peer_assignment_submission_schema_parts IS 'The questions that a submitter must answer in their submission';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_id IS 'Assignment that this submission schema part lives in';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_id IS 'This part''s id within the assignment';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_type IS 'The type ("fileUpload", "plainText", "richText", "url")';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_order IS 'The order within the assignment (lowest comes first)';
COMMENT ON COLUMN peer_assignment_submission_schema_parts.peer_assignment_submission_schema_part_prompt IS 'The prompt (a question for the submitter to answer)';
COMMENT ON TABLE assessment_checkbox_questions IS 'Information of checkbox quiz questions';
COMMENT ON COLUMN assessment_checkbox_questions.assessment_question_id IS 'unique id of a question in an assessment';
COMMENT ON COLUMN assessment_checkbox_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON COLUMN assessment_checkbox_questions.assessment_question_allow_partial_scoring IS 'No column description available';
COMMENT ON TABLE assessment_response_patterns IS '[No table description available]';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_id IS 'unique id for each of users'' responses to an assessment.';
COMMENT ON COLUMN assessment_response_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_answer IS 'No column description available';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_correct IS 'Whether the response was correct';
COMMENT ON COLUMN assessment_response_patterns.assessment_response_feedback IS 'Feedback shown to the user on interacting with the assessment.';
COMMENT ON TABLE course_progress IS 'Contains a log of when and how a user progresses in one course item of a course, with one of two progress states: ''started'' or ''completed''';
COMMENT ON COLUMN course_progress.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_progress.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_progress.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_progress.course_progress_state_type_id IS 'value of 1 is the `started` state, where value of 2 is the `completed` state';
COMMENT ON COLUMN course_progress.course_progress_ts IS 'No column description available';
COMMENT ON TABLE assessment_math_expression_patterns IS 'the patterns of the answers to a math assessment question';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_display IS 'The JSON blob containing the question prompt. This is written in a custom Coursera markup language. The actual prompt text is encapsulated within key named "value."';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_math_expression_patterns.assessment_pattern_correct IS 'For math expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE programming_submission_part_evaluations IS 'scores of individual parts of a programming assignment';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_assignment_id IS 'The universal id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment. maybe duplicate in different programming assignment.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_id IS 'The universal submission Id.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_part_score IS 'Score of this part.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_part_grading_ts IS 'Timestamp of this part.';
COMMENT ON COLUMN programming_submission_part_evaluations.programming_submission_part_feedback IS 'Feedback of this part.';
COMMENT ON TABLE course_branch_grades IS 'This table provides the grading event of when the user reached his or her highest grade in one course branch.
Also provides the passing/not-passing state for each user and course branch.';
COMMENT ON COLUMN course_branch_grades.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN course_branch_grades.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_ts IS 'No column description available';
COMMENT ON COLUMN course_branch_grades.course_passing_state_id IS 'a unique identifier for course passing state';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_overall_passed_items IS 'No column description available';
COMMENT ON COLUMN course_branch_grades.course_branch_grade_overall IS 'No column description available';
COMMENT ON TABLE feedback_item_ratings IS 'Contains data for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.course_id IS 'Course id for the course receiving feedback';
COMMENT ON COLUMN feedback_item_ratings.course_item_id IS 'Item id for the item being rated';
COMMENT ON COLUMN feedback_item_ratings.feedback_unit_id IS 'Detailed info for the element being rated. Will generally be a versioned id for item-level feedback';
COMMENT ON COLUMN feedback_item_ratings.feedback_unit_type IS 'The type of the element being rated. Should be an item type';
COMMENT ON COLUMN feedback_item_ratings.feedback_system IS 'Feedback system: LIKE_OR_DISLIKE for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.imperial_feedback_user_id IS 'Encrypted Coursera user id for imperial feedback data.';
COMMENT ON COLUMN feedback_item_ratings.feedback_rating IS 'Value of the rating. Should be 0 or 1 for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.feedback_max_rating IS 'Maximum value of the rating: 1 for item-level ratings';
COMMENT ON COLUMN feedback_item_ratings.detailed_context IS 'Contains information on the element and its parents, usually including versioning information';
COMMENT ON COLUMN feedback_item_ratings.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON COLUMN feedback_item_ratings.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE demographics_questions IS 'Stores questions from the demographics survey and user intent questions.';
COMMENT ON COLUMN demographics_questions.question_id IS 'Integer id for the questions
';
COMMENT ON COLUMN demographics_questions.question_type_id IS 'Indiciation of where this data was collected, based on id 0 (choice_id), 1 (integer response), 2 (text response).';
COMMENT ON COLUMN demographics_questions.question_desc IS 'The text of the quesiton the learner was asked.';
COMMENT ON TABLE course_branch_item_peer_assignments IS 'For each course, provide the mapping between course branches and versioned peer assignments.';
COMMENT ON COLUMN course_branch_item_peer_assignments.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN course_branch_item_peer_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_branch_item_peer_assignments.peer_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE discussion_question_followings IS 'records when discussion question is followed or unfollowed
note:
discussion_question_following_id has been deprecated. Do not use this column. This is kept just for backward compatibility.
discussion_question_following_ts has been deprecated. Do not use this column. This is kept just for backward compatibility.';
COMMENT ON COLUMN discussion_question_followings.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_question_followings.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN discussion_question_followings.discussion_question_id IS 'The id of the discussion question';
COMMENT ON COLUMN discussion_question_followings.discussion_question_following_active IS 'true if following, false if not';
COMMENT ON COLUMN discussion_question_followings.discussion_question_following_ts IS '(Deprecated) timestamp of following status change';
COMMENT ON COLUMN discussion_question_followings.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN discussion_question_followings.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE assessment_regex_questions IS '[No table description available]';
COMMENT ON COLUMN assessment_regex_questions.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_regex_questions.default_incorrect_feedback IS 'The text that is displayed to learners upon answering a question incorrectly. In the authoring interface, this corresponds to the "Explain Incorrect Answer (optional)" field';
COMMENT ON TABLE assessment_scope_types IS 'The description of the varying contexts in which the user can interact with the assessment';
COMMENT ON COLUMN assessment_scope_types.assessment_scope_type_id IS 'the id that links the assessmnt_scope_types table to see the assessment scope type description';
COMMENT ON COLUMN assessment_scope_types.assessment_scope_type_desc IS 'No column description available';
COMMENT ON TABLE programming_submission_part_text_submissions IS 'learner submissions to synchronously graded questions of a programming assignment';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_assignment_id IS 'The universal id of programming assignment.';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_submission_id IS 'The universal submission id.';
COMMENT ON COLUMN programming_submission_part_text_submissions.programming_submission_part_text_submission_answer IS 'The text answer of the submission. Regex or Numeric.';
COMMENT ON TABLE global_item_types IS 'Item type table for items represented as global items. Item types distinguish different forms of content that learners can make progress on. This table changes only when a new item type (reading, lecture, quiz) is introduced or deprecated.
See prod.course_item_types for mapping from non-global types to global item types. And global_items for mapping of global items to their global_item_content_type_id';
COMMENT ON COLUMN global_item_types.global_item_content_type_id IS 'numeric ID representing the type (lecture, supplement, quiz, etc) of the atom. Each global item must be of exactly one type. ';
COMMENT ON COLUMN global_item_types.global_item_content_type IS 'human readable string ID representing the type.';
COMMENT ON COLUMN global_item_types.global_item_content_type_description IS 'human readable description of the type';
COMMENT ON COLUMN global_item_types.is_linkable IS 'TRUE if this global item supports linking of the item between branches (versions) or courses.';
COMMENT ON COLUMN global_item_types.is_deprecated IS 'TRUE if this type has been deprecated, i.e., instructors cannot create new ones and we intend to migrate or delete existing ones.';
COMMENT ON TABLE courses IS 'The list of Coursera''s courses (or thing within a course shell) on the Phoenix platform,
including info on its important dates (e.g. when it was launched)
This table only contains data about real courses (omits courses labeled as fake).';
COMMENT ON COLUMN courses.course_id IS '22 character unique string identifying an individual course';
COMMENT ON COLUMN courses.course_slug IS 'The shortname of a course. This can be found in the course url, in the piece immediately
following "coursera.org/learn/".';
COMMENT ON COLUMN courses.course_name IS 'The name of a course. ';
COMMENT ON COLUMN courses.course_launch_ts IS 'The timestamp of when a course was made available to learners. ';
COMMENT ON COLUMN courses.course_update_ts IS 'The timestamp of when a course was last updated. ';
COMMENT ON COLUMN courses.course_deleted IS 'TRUE if the course is deleted.';
COMMENT ON COLUMN courses.course_graded IS 'Indicates whether a course contains graded items: 0 (no graded items), 1 (has graded items)';
COMMENT ON COLUMN courses.course_desc IS 'The course description which appears on the landing page';
COMMENT ON COLUMN courses.course_restricted IS 'Indicates whether enroll access to the course is open or restricted only to eligible
participants. All courses are unrestricted with the exception of deprecated courses:
0 (unrestricted), 1 (restricted)';
COMMENT ON COLUMN courses.course_verification_enabled_at_ts IS 'The timestamp of when Course Certificates were enabled for a course. ';
COMMENT ON COLUMN courses.primary_translation_equivalent_course IS 'The course id for the primary translation of a course. ';
COMMENT ON COLUMN courses.course_preenrollment_ts IS 'The timestamp of when pre-enrollment was opened for a course. ';
COMMENT ON COLUMN courses.estimated_work_load IS 'The estimated workload of a course as shown on the course description page. ';
COMMENT ON COLUMN courses.sessions_enabled_at IS 'The timestamp of when this course used sessions (instead of on-demand)';
COMMENT ON COLUMN courses.course_promo_photo_s3_bucket IS 'S3 bucket containing the promo photo for the course (used in catalog, for example).';
COMMENT ON COLUMN courses.course_promo_photo_s3_key IS 'S3 key (corresponding to `course_promo_photo_s3_bucket`)';
COMMENT ON COLUMN courses.course_level IS 'The course difficulty level: BEGINNER, INTERMEDIATE or ADVANCED.';
COMMENT ON COLUMN courses.course_planned_launch_date IS 'course planned launch date in text';
COMMENT ON COLUMN courses.course_header_image_bucket IS 'S3 bucket for the header image, which appears as a banner on the CDP. If no header image
exists, the site uses a version of the promo image instead.';
COMMENT ON COLUMN courses.course_header_image_key IS 'The key corresponding to `course_header_image_s3_bucket`';
COMMENT ON COLUMN courses.course_type IS 'Indicates if a course is a `standardCourse` or `rhymeProject`.';
COMMENT ON COLUMN courses.course_is_limited_to_enterprise IS 'Indicates if the course is limited for use in an enterprise program. This will only be true
for restricted membership courses.';
COMMENT ON TABLE assessment_mcq_reflect_questions IS 'Information of  (Reflective / Ungraded) Multiple Choice Questions';
COMMENT ON COLUMN assessment_mcq_reflect_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_mcq_reflect_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON TABLE programming_assignment_contents IS 'This table contains global item content for programming assignment.';
COMMENT ON COLUMN programming_assignment_contents.global_item_id IS 'Globally unique ID for global-item (independently sharable item contents unit)';
COMMENT ON COLUMN programming_assignment_contents.global_item_version IS 'Version ID for the global-item. Atom Contents are immutable, so when changes are made a new global_item_version_id is issued that is 1 greater than the previous version. version IDs start at 1.';
COMMENT ON COLUMN programming_assignment_contents.program_assign_assignment_id IS 'The versioned assignment id of the programming assignment';
COMMENT ON COLUMN programming_assignment_contents.program_assign_is_graded IS 'Whether the programming assignment is graded or not';
COMMENT ON TABLE lecture_contents IS 'Each row in this table represents lecture contents for a single version that a learner may see or have seen in the past.
- the same atom may have multiple content versions as the author makes updates and publishes them to learners.
- the highest atom_version_id is called the ''latest'' version
- non-latest versions may still be visible to learners either temporarily or permanently
- unpublished (draft) content is not in this table. (?? except maybe for version 1??)
Behavior
- A new row is added whenever a new lecture is created (new atom_id@version1) or a new lecture version is published to learners (same atom_id@latest+1).';
COMMENT ON COLUMN lecture_contents.global_item_id IS 'This is a globally unique Item ID. Refer to the documentation on item_id above. global_item_id''s refer to content that are stored outside the course branch, allowing them to be used in multiple branches and/or courses. Combine this table with global_items on this column to get item details.';
COMMENT ON COLUMN lecture_contents.global_item_version IS 'Incremented when a global-item is edited and published, refers to the version of the item.
If the item is not an global item, this is NULL.
If the item is a frozen gobal item, this is the version of the atom that is referenced by the branch.
If the item is a non-frozen global item, we reference the global_items table to get the latest version number.
Note that even if a course branch references the latest version of an global_item rather than to an
explicit version, this value explicitly reflects the latest version of the atom at the time of load.';
COMMENT ON COLUMN lecture_contents.lecture_video_id IS 'The ID of the video (not versioned).
??FK relation to what table??';
COMMENT ON COLUMN lecture_contents.lecture_invideo_assessment_id IS 'Versioned ID of the assessment, if any, used for in-video questions.
??FK relation to what table??';
COMMENT ON COLUMN lecture_contents.lecture_duration_ms IS 'The duration of the lecture in milliseconds. (Set by content author)';
COMMENT ON TABLE demographics_choices IS 'Stores choices to the questions from the demographics survey and user intent questions.';
COMMENT ON COLUMN demographics_choices.question_id IS 'Integer id for the questions';
COMMENT ON COLUMN demographics_choices.choice_id IS 'The choice id helps to identify how a learner responded to a demographic question. The choice id itself is not a unique identifier, but the question id/choice id combo is unique and relates to a specific choice description (choice_desc) that provides the text of a learner''s answer selection. ';
COMMENT ON COLUMN demographics_choices.choice_desc IS 'Indicated by a unique question id/choice id combo, this provides the text of a learner''s answer selection to a demographic question.';
COMMENT ON TABLE staff_graded_assignment_submissions IS 'These records represent the submissions and submission drafts for a staff graded assignment.
This table contains all versions of each record so that it is necessary to take the modified_ts into account.';
COMMENT ON COLUMN staff_graded_assignment_submissions.kvs_id IS 'raw id from stfgrd_submits_fixed.dcd';
COMMENT ON COLUMN staff_graded_assignment_submissions.modified_ts IS 'time when staff graded assignment submission record was written to database.';
COMMENT ON COLUMN staff_graded_assignment_submissions.staff_graded_assignment_id IS 'staff graded assignment id';
COMMENT ON COLUMN staff_graded_assignment_submissions.staff_graded_assignment_version IS 'staff graded assignment version';
COMMENT ON COLUMN staff_graded_assignment_submissions.is_draft IS 'whether the submission is still a draft or not (i.e. in progress or final)';
COMMENT ON COLUMN staff_graded_assignment_submissions.team_version IS '[optional] if this is a team assignment, this is the version of the team that submitted';
COMMENT ON COLUMN staff_graded_assignment_submissions.submitted_by IS 'the user id of the person that saved this submission (or draft)';
COMMENT ON COLUMN staff_graded_assignment_submissions.submitted_at IS 'time when staff graded assignment submission was created. similar to modified_ts but should be slightly prior.';
COMMENT ON COLUMN staff_graded_assignment_submissions.staff_graded_assignment_submission_id IS 'unique identifier for staff graded submission or draft';
COMMENT ON COLUMN staff_graded_assignment_submissions.deleted_at IS 'when submission / draft was soft-deleted. happens rarely.';
COMMENT ON COLUMN staff_graded_assignment_submissions.submitter_id IS 'an id representing either an individual user or a team (if it''s a team-submission). submitted_by is the individual submitting and submitter_id is the individual or team they are submitting as. ';
COMMENT ON COLUMN staff_graded_assignment_submissions.variant_selection_id IS '[optiona] quiz questions may have question variants that are selected from for each quiz attempt. this id will reference a variant selection record for specific attempt, so we can determine which specific quiz variants were selected from the assignment question groups. ';
COMMENT ON COLUMN staff_graded_assignment_submissions.submitter_user IS '[optional] if an individual assignment, this will be the user id of the assigned user. extracted from submitter_id';
COMMENT ON COLUMN staff_graded_assignment_submissions.submitter_team IS '[optional] if an team assignment, this will be the team id of the assigned team. extracted from submitter_id';
COMMENT ON COLUMN staff_graded_assignment_submissions.precondition_hash IS 'from workflow model. this is roughly an attempt id. multiple drafts and one submission will be associated with a precondition_hash.';
COMMENT ON COLUMN staff_graded_assignment_submissions.started_at IS '[only present after 04/2020] when the learner started first draft for precondition_hash';
COMMENT ON TABLE demographics_answers IS 'DEPRECATED. Will be dropped by EOY 2021.';
COMMENT ON COLUMN demographics_answers.question_id IS 'The indentifier for a particular question the learner answered. Can be used to connect demographics_answers, demographics_questions, and demographics_choices.';
COMMENT ON COLUMN demographics_answers.imperial_demographics_user_id IS 'Encrypted Coursera user id for imperial demographics data.';
COMMENT ON COLUMN demographics_answers.submission_ts IS 'The timestamp for when the learner submitted their demographic survey.';
COMMENT ON COLUMN demographics_answers.choice_id IS 'The identifier for the answer choice the learner selected for a particular question.';
COMMENT ON COLUMN demographics_answers.answer_int IS 'Demographics question answered by typing an interger (birth year, 4 digits). ';
COMMENT ON TABLE peer_submission_part_scores IS 'Part scores that a submission gets. This only exists for submissions that have scores.';
COMMENT ON COLUMN peer_submission_part_scores.peer_assignment_id IS 'The assignment that this part score applies to';
COMMENT ON COLUMN peer_submission_part_scores.peer_assignment_review_schema_part_id IS 'The part of the review schema that this score applies to';
COMMENT ON COLUMN peer_submission_part_scores.peer_submission_id IS 'The submission that this score applies to';
COMMENT ON COLUMN peer_submission_part_scores.peer_submission_part_score IS 'The score';
COMMENT ON TABLE staff_graded_assignments_evaluation_responses IS '[No table description available]';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.coursera_user_id IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.assessment_title IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.course_name IS 'The name of a course. ';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.section_name IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.assessment_submitted_ts IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.learning_outcome_name IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.learning_outcome_response_type IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.learning_outcome_type IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.outcome_score IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.learning_outcome_max_score IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.is_draft IS 'whether the submission is still a draft or not (i.e. in progress or final)';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.assessment_version IS 'Whenever a quiz is updated the base id is kept the same but the version and assessment id are updated.';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.evaluated_by IS '[optional] user id of grader completing the evaluation.  should always be present, but there are a handful of records where it is not. ';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.evaluated_at IS '[optional] when the evaluation was last saved';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.submission_id IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.submitted_by IS 'the user id of the person that saved this submission (or draft)';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.submitter_user IS '[optional] if an individual assignment, this will be the user id of the assigned user. extracted from submitter_id';
COMMENT ON COLUMN staff_graded_assignments_evaluation_responses.submitter_team IS '[optional] if an team assignment, this will be the team id of the assigned team. extracted from submitter_id';
COMMENT ON TABLE notebook_workspaces IS 'Notebook workspace provide a user with access to a Jupyter server with a persistent file system that stores personal files.';
COMMENT ON COLUMN notebook_workspaces.notebook_workspace_id IS 'Unique id for the notebook workspace. ';
COMMENT ON COLUMN notebook_workspaces.notebook_workspace_template_base_id IS 'No column description available';
COMMENT ON COLUMN notebook_workspaces.notebook_workspace_created_ts IS 'No column description available';
COMMENT ON COLUMN notebook_workspaces.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON TABLE discussion_answer_flags IS 'records when a discussion answer is marked as resolved.';
COMMENT ON COLUMN discussion_answer_flags.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_answer_flags.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN discussion_answer_flags.discussion_answer_id IS 'The id of an answer in the discussion forum. ';
COMMENT ON COLUMN discussion_answer_flags.discussion_answer_flag_active IS 'A learner may flag a discussion answer, and later mark that answer as resolved. If a flag is still active, the value of "discussion_answer_flag_active" will be t. If the report was marked as resolved, the value will be f.';
COMMENT ON COLUMN discussion_answer_flags.discussion_answer_flag_ts IS 'Indicates the time at which the discussion answer was flagged';
COMMENT ON COLUMN discussion_answer_flags.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN discussion_answer_flags.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE users IS 'This table is used for Research Data Exports.
Note:
The user''s course_membership_role must be in this list to be included in the export:
[''LEARNER'', ''INSTRUCTOR'', ''MENTOR'']';
COMMENT ON COLUMN users.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN users.user_join_ts IS 'The timestamp of when the user joined Coursera.';
COMMENT ON COLUMN users.country_cd IS 'The country code of the user''s location, based on IP address or as set by the user in their profile. ';
COMMENT ON COLUMN users.region_cd IS 'The region code of the user''s location, based on IP address or as set by the user in their profile. ';
COMMENT ON COLUMN users.profile_language_cd IS 'The language code of the user''s language, based on IP address or as set by the user in their profile. ';
COMMENT ON COLUMN users.browser_language_cd IS 'The language code of the user''s language, as set in their browser.';
COMMENT ON COLUMN users.reported_or_inferred_gender IS 'The gender of either "male" or "female" or NULL, curated from reported and inferred sources.';
COMMENT ON COLUMN users.employment_status IS 'The selected value for the "Employment Status" field on the user''s profile.';
COMMENT ON COLUMN users.educational_attainment IS 'The selected value for the "Educational Attainment" field on the user''s profile.';
COMMENT ON COLUMN users.student_status IS 'The selected value for the "Student Status" field on the user''s profile.';
COMMENT ON TABLE course_item_programming_assignments IS 'For each course, provide the mapping between course items and versioned programming assignments.';
COMMENT ON COLUMN course_item_programming_assignments.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_item_programming_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_item_programming_assignments.programming_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE feedback_course_ratings IS 'Contains data for course ratings';
COMMENT ON COLUMN feedback_course_ratings.course_id IS 'Course id for the course receiving ratings';
COMMENT ON COLUMN feedback_course_ratings.imperial_feedback_user_id IS 'Encrypted Coursera user id for imperial feedback data.';
COMMENT ON COLUMN feedback_course_ratings.feedback_system IS 'Feedback system: STAR for course ratings';
COMMENT ON COLUMN feedback_course_ratings.feedback_rating IS 'Value of the rating. Should be 1-5 for active course ratings';
COMMENT ON COLUMN feedback_course_ratings.feedback_max_rating IS 'Maximum value of the rating: 5 for course ratings';
COMMENT ON COLUMN feedback_course_ratings.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON COLUMN feedback_course_ratings.course_branch_id IS 'This was added in Feb2017, when the backend supported collecting feedback at the branch level.
Data was not backfilled, so any NULL values can only be best inferred that the feedback was given
for the original version of the course, and to not any specific branch.';
COMMENT ON TABLE peer_review_part_choices IS 'Answers to option-based review schema questions ("options" and "yesNo")';
COMMENT ON COLUMN peer_review_part_choices.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_review_part_choices.peer_assignment_review_schema_part_id IS 'The part of the review schema that this answer applies to';
COMMENT ON COLUMN peer_review_part_choices.peer_assignment_review_schema_part_option_id IS 'The answer';
COMMENT ON COLUMN peer_review_part_choices.peer_review_id IS 'The review that this answer is part of';
COMMENT ON TABLE course_items IS '(Deprecated. Please use prod.course_branch_items) A single content item in a course such as lecture, quiz or peer review assignment.
Note: For courses that uses the Course Versioning feature, please refer to the branch version of this table.';
COMMENT ON COLUMN course_items.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_items.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_items.course_lesson_id IS '5 character alphanumeric string identifying an individual lesson within a course. course_lesson_id need not be unique, but a course_lesson_id/course_id pair is unique.';
COMMENT ON COLUMN course_items.course_item_order IS 'The order of an item within a particular lesson, with "0" indicating the first item in the lesson.';
COMMENT ON COLUMN course_items.course_item_type_id IS 'There are many different types of of items that make up a course. Each item is given an item_type_id for ease of identification. ';
COMMENT ON COLUMN course_items.course_item_name IS 'The name of an item, as seen in the learner view of the course. ';
COMMENT ON COLUMN course_items.course_item_optional IS 'A course item can either be optional ("true", which means a learner does not need to pass it to complete the course) or not ("false", which means the learner must pass it to complete the course. ';
COMMENT ON TABLE assessment_types IS 'Description of assessment types';
COMMENT ON COLUMN assessment_types.assessment_type_id IS 'unique assessment type id';
COMMENT ON COLUMN assessment_types.assessment_type_desc IS 'description of each assessment type';
COMMENT ON TABLE discussion_questions IS 'For each course''s discussion forums, contains the list of the questions, with its title, content, and author.';
COMMENT ON COLUMN discussion_questions.discussion_question_id IS 'The id of the question in the discussion forum.';
COMMENT ON COLUMN discussion_questions.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_questions.discussion_question_title IS 'The title of the question.';
COMMENT ON COLUMN discussion_questions.discussion_question_details IS 'The content of the question';
COMMENT ON COLUMN discussion_questions.discussion_question_context_type IS 'The context of this discussion question, e.g. "module"';
COMMENT ON COLUMN discussion_questions.course_id IS 'The (on-demand) course in which this question exists.';
COMMENT ON COLUMN discussion_questions.course_module_id IS '5 character alphanumeric string identifying an individual module within a course. course_module_id need not be unique, but a course_module_id/course_id pair is unique.';
COMMENT ON COLUMN discussion_questions.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN discussion_questions.discussion_forum_id IS 'unique identifier for a forum';
COMMENT ON COLUMN discussion_questions.country_cd IS ' The country context in which the question was posted, only applicable to country-specific questions.';
COMMENT ON COLUMN discussion_questions.group_id IS 'No column description available';
COMMENT ON COLUMN discussion_questions.discussion_question_created_ts IS 'The timestamp of when the discussion question was created. ';
COMMENT ON COLUMN discussion_questions.discussion_question_updated_ts IS 'The timestamp of when the discussion question was updated.';
COMMENT ON TABLE discussion_course_forums IS 'The list of course forums.
Every course branch has one root forum.
Also, week and item forums are created based on the course material.';
COMMENT ON COLUMN discussion_course_forums.discussion_forum_id IS 'unique identifier for a forum';
COMMENT ON COLUMN discussion_course_forums.course_branch_id IS 'unique identifier for a course branch';
COMMENT ON COLUMN discussion_course_forums.discussion_course_forum_title IS 'Title of the forum';
COMMENT ON COLUMN discussion_course_forums.discussion_course_forum_description IS 'Forum description';
COMMENT ON COLUMN discussion_course_forums.discussion_course_forum_order IS 'The order in which the discussion forum, based on the weekly schedule of the course''s materials';
COMMENT ON TABLE users_courses__degree_program_memberships IS '[No table description available]';
COMMENT ON COLUMN users_courses__degree_program_memberships.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN users_courses__degree_program_memberships.course_id IS 'Course ID';
COMMENT ON COLUMN users_courses__degree_program_memberships.degree_program_id IS 'Degree ID for the degree that the course is a part of.';
COMMENT ON COLUMN users_courses__degree_program_memberships.course_slug IS 'Course Slug';
COMMENT ON COLUMN users_courses__degree_program_memberships.degree_program_name IS 'Degree Program Name';
COMMENT ON COLUMN users_courses__degree_program_memberships.degree_program_slug IS 'Degree Program Slug';
COMMENT ON COLUMN users_courses__degree_program_memberships.degree_program_type IS 'Type of Degree';
COMMENT ON TABLE assessment_responses IS 'information of learner responses to a quiz question and the score received';
COMMENT ON COLUMN assessment_responses.assessment_response_id IS 'unique id for each of users'' responses to an assessment.';
COMMENT ON COLUMN assessment_responses.assessment_id IS 'unique id of each assessment';
COMMENT ON COLUMN assessment_responses.assessment_action_id IS 'unique id for each interaction of the user with the assessment, linking to the assessment_action_id field in the
assessment_actions table';
COMMENT ON COLUMN assessment_responses.assessment_action_version IS 'The version of the learner''s responses to the assessment';
COMMENT ON COLUMN assessment_responses.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_responses.assessment_response_score IS 'score for the particular assessment response';
COMMENT ON COLUMN assessment_responses.assessment_response_weighted_score IS 'No column description available';
COMMENT ON TABLE discussion_answers IS 'For each course''s discussion forums, contains the list of the answers that users submitted to discussion questions.';
COMMENT ON COLUMN discussion_answers.discussion_answer_id IS 'The id of the answer in the discussion forum.';
COMMENT ON COLUMN discussion_answers.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_answers.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN discussion_answers.discussion_answer_content IS 'Content of the answer (CML)';
COMMENT ON COLUMN discussion_answers.discussion_question_id IS 'The id of a question in the discussion forum. ';
COMMENT ON COLUMN discussion_answers.discussion_answer_parent_discussion_answer_id IS 'Parent answer if this is a nested reply (we cap nesting at 1 level)';
COMMENT ON COLUMN discussion_answers.discussion_answer_created_ts IS 'The timestamp of when the discussion answer was created. ';
COMMENT ON COLUMN discussion_answers.discussion_answer_updated_ts IS 'The timestamp of when the discussion answer was updated.';
COMMENT ON COLUMN discussion_answers.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN discussion_answers.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE assessment_regex_pattern_flags IS '[No table description available]';
COMMENT ON COLUMN assessment_regex_pattern_flags.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_regex_pattern_flags.assessment_pattern_flag_type_id IS 'ID for a pattern flag type';
COMMENT ON TABLE course_passing_states IS 'The descriptions of passing states for courses from the course_grades table.
A learner can be in one of four "states" with respect to passing a branch:
- 0 means they have started the branch but not passed
- 1 means they have completed the branch without identity verification [deprecated]
- 2 means they''ve completed the branch with identity verification
- 3 means the branch is not passable.
Note:
- We don''t require identity verification anymore, so there is no meaningful difference between states 1 and 2. We have not fully audited the code to ensure that we''re only writing one or the other, but it seems that 1 is deprecated and 2 is preferred. In any case, we should interpret either as "passed".
- I don''t believe that it is a valid configuration for a branch to be not passable. Some investigation will need to be done to understand the circumstances here.';
COMMENT ON COLUMN course_passing_states.course_passing_state_id IS 'a unique identifier for course passing state';
COMMENT ON COLUMN course_passing_states.course_passing_state_desc IS 'a description for course passing state (e.g. "passed", "verified passed")';
COMMENT ON TABLE on_demand_session_memberships IS 'For each course''s session, list the learners with the role
of ''member'' in that session and their start/end timestamps';
COMMENT ON COLUMN on_demand_session_memberships.course_id IS 'Course ID';
COMMENT ON COLUMN on_demand_session_memberships.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN on_demand_session_memberships.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN on_demand_session_memberships.on_demand_sessions_membership_start_ts IS 'the datetime of when the learner became a ''member'' role for this course''s session';
COMMENT ON COLUMN on_demand_session_memberships.on_demand_sessions_membership_end_ts IS 'the datetime of when the learner ended his or her ''member'' role for this course''s session';
COMMENT ON COLUMN on_demand_session_memberships.course_branch_id IS 'Course Version (Branch) ID';
COMMENT ON TABLE course_progress_state_types IS 'A mapping table from ids to descriptions of the different course progress states, such as 1 meaning "started".';
COMMENT ON COLUMN course_progress_state_types.course_progress_state_type_id IS 'There are different possible progress state types, each state is given a number. ';
COMMENT ON COLUMN course_progress_state_types.course_progress_state_type_desc IS 'The description of each possible progress state type.
Currently 0 (not started), 1 (started), and 2 (completed). ';
COMMENT ON TABLE peer_assignments IS 'Metadata of peer assignments.
Source table:
staging.peer_assignments
staging.peer_assignment_review_schema_parts
staging.peer_assignments_review_schema_part_options
Table behaviours:
A record is created when a new peer assignment is published.
A record is updated when a new peer assignment is updated and the changes are published.
A record is not expected to be deleted.';
COMMENT ON COLUMN peer_assignments.peer_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON COLUMN peer_assignments.peer_assignment_base_id IS 'The unversioned id';
COMMENT ON COLUMN peer_assignments.peer_assignment_type IS 'The type ("standard", "graded", "closed", "phased")';
COMMENT ON COLUMN peer_assignments.peer_assignment_required_review_count IS 'The number of reviews a submitter needs to do (of others'' submissions) to get credit.';
COMMENT ON COLUMN peer_assignments.peer_assignment_passing_fraction IS 'Fraction of the maximum possible score that a submitter must achieve in order to pass. This only exists for assignments that generate scores';
COMMENT ON COLUMN peer_assignments.peer_assignment_required_reviewer_count_for_score IS 'The number of reviews a submission must receive to get a score.';
COMMENT ON COLUMN peer_assignments.peer_assignment_required_wait_for_score_ms IS '[DEPRECATED] DO NOT USE';
COMMENT ON COLUMN peer_assignments.peer_assignment_maximum_score IS 'Maximum score for this assignment. This is nullable because not all assignments generate scores.
';
COMMENT ON COLUMN peer_assignments.peer_assignment_update_ts IS 'When this version of the assignment was created';
COMMENT ON COLUMN peer_assignments.peer_assignment_is_mentor_graded IS 'Indicates if this assignment is graded by mentors, instructors etc. Default to false.
';
COMMENT ON COLUMN peer_assignments.peer_assignment_is_anonymous IS 'Indicates whether or not to anonymize all learner-generated content created for this assignment. Default to false.';
COMMENT ON TABLE assessment_single_numeric_patterns IS 'Table that stores the single numeric pattern type questions.';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_type_id IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_value IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_max IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_min IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_include_min IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_include_max IS 'No column description available';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_single_numeric_patterns.assessment_pattern_correct IS 'For regular expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE course_branch_item_programming_assignments IS 'For each course, provide the mapping between course branches and versioned programming assignments.';
COMMENT ON COLUMN course_branch_item_programming_assignments.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN course_branch_item_programming_assignments.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_branch_item_programming_assignments.programming_assignment_id IS 'This is a ''course_content_id'', and is versioned. (e.g ABC@1 is version 1)';
COMMENT ON TABLE staff_graded_assignment_final_grades IS '[No table description available]';
COMMENT ON COLUMN staff_graded_assignment_final_grades.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN staff_graded_assignment_final_grades.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN staff_graded_assignment_final_grades.assessment_title IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.submission_score IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.submission_max_score IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.course_name IS 'The name of a course. ';
COMMENT ON COLUMN staff_graded_assignment_final_grades.section_name IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.assignment_url IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.grade IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.degree_program_slug IS 'Degree Program Slug';
COMMENT ON COLUMN staff_graded_assignment_final_grades.assignment_submitted_ts IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.term_name IS 'No column description available';
COMMENT ON COLUMN staff_graded_assignment_final_grades.versioned_learner_item_evaluation_id IS 'No column description available';
COMMENT ON TABLE programming_submission_part_grid_submissions IS 'Submissions to asynchronously graded questions';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_assignment_id IS 'The universal id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_assignment_submission_schema_part_id IS 'The universal part id the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_submission_id IS 'The universal submission id.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_submission_part_grid_submission_url IS 'The url of the grid submission.';
COMMENT ON COLUMN programming_submission_part_grid_submissions.programming_submission_part_grid_submission_custom_cykkte IS 'The extra grid grader parameter. Name shortened from ''programming_submission_part_grid_submission_custom_grader_parameters'' for compatibility.';
COMMENT ON TABLE peer_skips IS 'This table contains peer skip for peer review assignment.
Users may "skip" reviewing a submission if there is a problem with it. This table records all the skips that happen.
Skipped submissions usually have a lower priority in the review queue. The more they get skipped, the lower priority they are.
Each row is a peer review comment when a given learner can leave a comment on a peer submission when reviewing. It contains:
- Peer skip id - unique uuid
- Peer submission id - submission id that has been skipped
- User id - the user who skipped the submission
- Peer skip created timestamp - skip created timestamp
- Peer skip type - The type of skip ("inappropriateContent", "incompleteSubmission", "other", "plagiarism")
- Peer skip text - reason to submit peer skip
A record is created whenever a new peer skip is given. If flagged as "plagiarism", this will create a "peer flag" case.
Deletion of peer skip records is not expected. Learner does not have ability to edit peer skip after submitting.
Peer skip text is used in plagiarism internal tool for service agents to make plagiarism decision.
Starting from 2021/03, learners are required to enter >5 words in the reason in order to submit peer skip.
Source data:
skp_rvws';
COMMENT ON COLUMN peer_skips.peer_skip_id IS 'Primary Key (uuid)';
COMMENT ON COLUMN peer_skips.peer_submission_id IS 'The submission that has been skipped';
COMMENT ON COLUMN peer_skips.imperial_peer_assignments_user_id IS 'Encrypted Coursera user id for imperial peer_assignments data.';
COMMENT ON COLUMN peer_skips.peer_skip_created_ts IS 'The time when the skipper skipped this submission';
COMMENT ON COLUMN peer_skips.peer_skip_type IS 'The type of skip ("inappropriateContent", "incompleteSubmission", "other", "plagiarism")';
COMMENT ON COLUMN peer_skips.peer_skip_text IS 'The explanation that the skipper gave';
COMMENT ON TABLE course_memberships IS 'A log of when and what membership role did a user get assigned to for a course.
A <user_id, course_id> tuple can have multiple values in this table to record the different roles across time.  For example, a learner could have watched the preview content (BROWSER), then hit the enroll button to join (LEARNER), and then unenrolled a few days later (NOT_ENROLLED).';
COMMENT ON COLUMN course_memberships.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_memberships.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_memberships.course_membership_role IS 'A user can have one of multiple roles in a course, set either by their affiliation to the course, or their activity. Currently the options include: not_enrolled, pre_enrolled_learner, browser, learner, mentor, teaching_staff, instructor, university_admin. ';
COMMENT ON COLUMN course_memberships.course_membership_ts IS 'The timestamp for when a user became affiliated with the course in that particular membership role.';
COMMENT ON TABLE assessment_actions IS 'This table stores the interactions of the user with the assessment.';
COMMENT ON COLUMN assessment_actions.assessment_action_id IS 'Unique id for each interaction of the user with the assessment.';
COMMENT ON COLUMN assessment_actions.assessment_action_base_id IS 'Base id for the assessment interaction that is used for creating new versions for interaction of the user - assessment pair.';
COMMENT ON COLUMN assessment_actions.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON COLUMN assessment_actions.assessment_scope_id IS 'Unique contexts in which the user can interact with the assessment.';
COMMENT ON COLUMN assessment_actions.assessment_scope_type_id IS 'the id that links the assessmnt_scope_types table to see the assessment scope type description';
COMMENT ON COLUMN assessment_actions.assessment_action_version IS 'Version of the assessment action';
COMMENT ON COLUMN assessment_actions.assessment_action_ts IS 'Timestamp of the users interaction with the assessment.
';
COMMENT ON COLUMN assessment_actions.assessment_action_start_ts IS 'Start timestamp of the users interaction with the assessment.
';
COMMENT ON COLUMN assessment_actions.guest_user_id IS 'ids of learners who did not log in';
COMMENT ON COLUMN assessment_actions.imperial_assessments_user_id IS 'Encrypted Coursera user id for imperial assessments data.';
COMMENT ON TABLE assessment_mcq_questions IS 'multiple-choice assessment questions';
COMMENT ON COLUMN assessment_mcq_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_mcq_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON TABLE feedback_item_comments IS 'Contains the contents of comments on items or sub-items, which should generally be flags';
COMMENT ON COLUMN feedback_item_comments.course_id IS 'Course id for the course receiving feedback';
COMMENT ON COLUMN feedback_item_comments.course_item_id IS 'Item id for the item receiving feedback';
COMMENT ON COLUMN feedback_item_comments.feedback_unit_id IS 'Detailed info for the element receiving feedback. Will generally be a versioned id for item-level feedback, or a sub-item id when feedback can be left on particular elements within an item, e.g. a part of a programming assignment';
COMMENT ON COLUMN feedback_item_comments.feedback_unit_type IS 'The type of the element feedback is being left on. May be an item type or sub-item type';
COMMENT ON COLUMN feedback_item_comments.feedback_system IS 'Feedback system: FLAG for item-level and sub-item-level flagging';
COMMENT ON COLUMN feedback_item_comments.detailed_context IS 'Contains information on the element and its parents, usually including versioning information';
COMMENT ON COLUMN feedback_item_comments.imperial_feedback_user_id IS 'Encrypted Coursera user id for imperial feedback data.';
COMMENT ON COLUMN feedback_item_comments.feedback_category IS 'The category flagged by the feedback';
COMMENT ON COLUMN feedback_item_comments.feedback_text IS 'CML text of the feedback';
COMMENT ON COLUMN feedback_item_comments.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON COLUMN feedback_item_comments.feedback_active IS 'Indicates whether or not the feedback is still active, or if it was resolved, whether by the submitter or the instructor';
COMMENT ON COLUMN feedback_item_comments.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE course_formative_quiz_grades IS '[No table description available]';
COMMENT ON COLUMN course_formative_quiz_grades.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_formative_quiz_grades.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_formative_quiz_grades.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_formative_quiz_grades.course_quiz_grade_ts IS 'No column description available';
COMMENT ON COLUMN course_formative_quiz_grades.course_quiz_grade IS 'No column description available';
COMMENT ON COLUMN course_formative_quiz_grades.course_quiz_max_grade IS 'No column description available';
COMMENT ON TABLE course_branch_lessons IS 'Subsection of a single module, can be composed of multiple items in a course.';
COMMENT ON COLUMN course_branch_lessons.course_branch_id IS 'The learner course branch_id.';
COMMENT ON COLUMN course_branch_lessons.course_lesson_id IS 'The lesson id within this branch.';
COMMENT ON COLUMN course_branch_lessons.course_module_id IS 'The id of the module that contains this lesson.';
COMMENT ON COLUMN course_branch_lessons.course_branch_lesson_order IS 'The order of a lesson within a particular module, with "0" indicating the first lesson in a module. ';
COMMENT ON COLUMN course_branch_lessons.course_branch_lesson_name IS 'The name of a lesson, as seen in the learner view of the course. ';
COMMENT ON TABLE reading_contents IS 'This table includes data of the reading CML asset.';
COMMENT ON COLUMN reading_contents.global_item_id IS 'Globally unique ID for global item (independently sharable item contents unit)';
COMMENT ON COLUMN reading_contents.global_item_version IS 'Version ID for the global item. Global item contents are immutable, so when changes are made a new global_item_version is issued that is 1 greater than the previous version. version IDs start at 1.';
COMMENT ON COLUMN reading_contents.reading_asset_id IS 'Versioned asset id for the reading''s CML asset';
COMMENT ON COLUMN reading_contents.reading_base_id IS 'The unversioned asset id for the reading''s CML asset';
COMMENT ON COLUMN reading_contents.reading_content IS 'Content of the reading asset (CML asset), including:
dtdId: id of the dtd file that will be used for specifying CML format
value: actual CML content of the asset';
COMMENT ON TABLE assessment_response_options IS 'learner responses to assessments';
COMMENT ON COLUMN assessment_response_options.assessment_response_id IS 'Unique id for each of users'' responses to an assessment.';
COMMENT ON COLUMN assessment_response_options.assessment_option_id IS 'unique choice option id, linking to the assessment_option_id in the assessment_options table';
COMMENT ON COLUMN assessment_response_options.assessment_response_correct IS 'Whether the response was correct';
COMMENT ON COLUMN assessment_response_options.assessment_response_feedback IS 'Feedback shown to the user on interacting with the assessment.';
COMMENT ON COLUMN assessment_response_options.assessment_response_selected IS 'Whether this response option was selected';
COMMENT ON TABLE ecb_evaluation_requests IS 'Executable code block evaluations requested by learners.';
COMMENT ON COLUMN ecb_evaluation_requests.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN ecb_evaluation_requests.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN ecb_evaluation_requests.imperial_ecb_user_id IS 'Encrypted Coursera user id for imperial ecb data.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluator_id IS 'Unique id for the evaluator used to execute the learner''s request.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_requested_ts IS 'Date and time when the user executed their request.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_duration_ms IS 'Time, in milliseconds, between learner request and system response. ';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_expression IS 'Code expression submitted by the user.';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_result IS 'JSON-formatted evaluation result. ';
COMMENT ON COLUMN ecb_evaluation_requests.ecb_evaluation_errors IS 'JSON-formatted list of system errors, if applicable. ';
COMMENT ON COLUMN ecb_evaluation_requests.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE assessment_question_types IS 'Description of the types of quiz questions';
COMMENT ON COLUMN assessment_question_types.assessment_question_type_id IS 'A numerical identifier correspnding to each of the assessment question types described by the assessment_question_type_desc field';
COMMENT ON COLUMN assessment_question_types.assessment_question_type_desc IS 'Our assessments system defines several different quiz question types, some of which are limited only to in-video quiz questions embedded within videos. The table description is a text identifier which corresponds to the following items: regex (Regular Expression), math expression (Math Expression), mcq (Multiple Choice Question), single numeric (Numeric match), checkbox (Checkbox), text exact match (Text match), reflect (Ungraded text entry question), mcqReflect (Multiple Choice Question - Reflective / Ungraded), checkboxReflect (Checkbox - Reflective / Ungraded), checkbox poll (Checkbox - Poll question - Lecture only), poll (Multiple Choice Question - Poll question - Lecture only), continue (Pause and reflect question - Lecture only)';
COMMENT ON TABLE ecb_engines IS 'Executable code block engines handle evaluation requests for a single language.';
COMMENT ON COLUMN ecb_engines.ecb_engine_id IS 'Unique, versioned id for the engine.';
COMMENT ON COLUMN ecb_engines.ecb_engine_name IS 'Human-readable name for the engine.';
COMMENT ON COLUMN ecb_engines.ecb_engine_updated_ts IS 'Time when the engine definition was updated. ';
COMMENT ON COLUMN ecb_engines.ecb_engine_memory_limit_mb IS 'Maximum memory available to execution requests using the engine, in MB.';
COMMENT ON COLUMN ecb_engines.ecb_engine_timeout_ms IS 'Maximum time allowed for execution requests made to the engine, in ms.';
COMMENT ON COLUMN ecb_engines.ecb_engine_disk_limit_mb IS 'Maximum disk space available to execution requests using the engine, in MB.';
COMMENT ON COLUMN ecb_engines.ecb_engine_cpu_limit IS 'CPU shares available to execution requests using the engine. 1024 corresponds to one virtual CPU.';
COMMENT ON TABLE peer_reviews IS 'This table contains peer review metadata for those reviews that have been given to a submission.
peer_review_id is a unique key and can reference to same peer_submission_id. Note: most of the columns are derivable from prod.raw_peer_review_contents except peer_review_marked_helpful_ts, peer_review_rated_ts and peer_review_rating as they were only populated before the features related to the 3 columns were deprecated in September 2015.
A record is created whenever a peer review is submitted.
Learner will not be able to modify peer review after submitting. Therefore update of peer review records is not expected.
Deletion of peer review will be marked with DeletionReasonData (ResitDeletionReason, SnapshotRestoreDeletionReason) as soft delete.
Source data:
prod.raw_peer_review_contents
prod.raw_peer_review_complete_markers
prod.peer_assignments
Downstream table:
bi.peer_assignment_daily_monitor
bi.current_mentors
bi.peer_review_submission_interaction_evidence	
Courier model:
A partial combination of StoredPeerReview and deprecated models in 2015-09';
COMMENT ON COLUMN peer_reviews.peer_review_id IS 'Primary Key';
COMMENT ON COLUMN peer_reviews.peer_submission_id IS 'The submission that this review is for';
COMMENT ON COLUMN peer_reviews.imperial_peer_assignments_user_id IS 'Encrypted Coursera user id for imperial peer_assignments data.';
COMMENT ON COLUMN peer_reviews.peer_review_created_ts IS 'The time when that the review was created. The review never changes after creation';
COMMENT ON COLUMN peer_reviews.peer_review_first_visible_to_submitter_ts IS 'The time when that the review was first visible to the submission submitter. Is NULL if the review is not visible. Note that an invisible review might never become visible. Is non-NULL if and only if the review was applied to the grade.';
COMMENT ON COLUMN peer_reviews.peer_review_marked_helpful_ts IS 'The time that the review receiver marked this review as helpful. Is NULL if the receiver has not marked it helpful. This feature is deprecated in favor of ratings around 2015-06-19 (see peer_review_rated_ts and peer_review_ratings
columns below), but this column still contains data from when the feature was not deprecated.';
COMMENT ON COLUMN peer_reviews.peer_review_rated_ts IS 'The time that the review receiver rated this review. Is NULL if the receiver has not rated it. This feature started existing around 2015-06-19 and stopped existing around 2015-09-16.';
COMMENT ON COLUMN peer_reviews.peer_review_rating IS 'The rating that the review receiver gave this review. Is NULL if the receiver has not rated it. This feature started existing around 2015-06-19 and stopped existing around 2015-09-16.';
COMMENT ON COLUMN peer_reviews.peer_review_is_mentor_review IS 'Indicates if the review is reviewed by mentor. Default to false.';
COMMENT ON TABLE on_demand_sessions IS 'Contains sessions info (e.g start and end dates) and the Course Versioning used on the Phoenix platform';
COMMENT ON COLUMN on_demand_sessions.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN on_demand_sessions.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN on_demand_sessions.on_demand_sessions_start_ts IS 'The start date of a Phoenix session';
COMMENT ON COLUMN on_demand_sessions.on_demand_sessions_end_ts IS 'The end date of a Phoenix session';
COMMENT ON COLUMN on_demand_sessions.on_demand_sessions_enrollment_end_ts IS 'The end date of the enrollment period of a Phoenix session';
COMMENT ON COLUMN on_demand_sessions.course_branch_id IS 'Each session is associated with a single branch. Learners enrolled in a session see the course contents associated with this branch.';
COMMENT ON TABLE peer_submission_part_free_responses IS 'Answers to the submission schema questions, for the "plainText" and "richText" submission schema part types.';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_assignment_id IS 'The assignment that this answer applies to';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_assignment_submission_schema_part_id IS 'The part of the submission schema that this answer applies to';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_submission_id IS 'The submission that this answer is part of';
COMMENT ON COLUMN peer_submission_part_free_responses.peer_submission_part_free_response_text IS 'The contents of the answer';
COMMENT ON TABLE course_grades IS 'This table provides the grading event of when the user reached his or her highest grade in one course (of any branch of the course, see course_branch_grades for specific branch grades).
Also provides the passing/not-passing state for each user and course.';
COMMENT ON COLUMN course_grades.course_id IS 'Course Identifier - globally unique';
COMMENT ON COLUMN course_grades.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_grades.course_grade_ts IS 'Timestamp at which the grade was achieved.';
COMMENT ON COLUMN course_grades.course_passing_state_id IS 'State (pass / fail).';
COMMENT ON COLUMN course_grades.course_grade_overall_passed_items IS 'Number of item passed.';
COMMENT ON COLUMN course_grades.course_grade_overall IS 'Overall grade achieved in the course.';
COMMENT ON COLUMN course_grades.course_grade_verified_passed_items IS 'DEPRECATED. Will be dropped by EOY 2021';
COMMENT ON COLUMN course_grades.course_grade_verified IS 'DEPRECATED. Will be dropped by EOY 2021';
COMMENT ON TABLE lti_tool_contents IS 'contains contents for LTI (Learning Tools Interoperability) items that are stored as global items.';
COMMENT ON COLUMN lti_tool_contents.global_item_id IS 'Globally unique ID for global items (independently sharable item contents unit)';
COMMENT ON COLUMN lti_tool_contents.global_item_version IS 'Version ID for the global item. Global Item Contents are immutable, so when changes are made a new global_item_version_id is issued that is 1 greater than the previous version. version IDs start at 1.';
COMMENT ON COLUMN lti_tool_contents.tool_id IS 'ID of the LTI tool';
COMMENT ON COLUMN lti_tool_contents.is_graded IS 'Content: TRUE if this global item is graded (not practice). Graded items will show up in the branch''s grading formula with a non-zero grading weight.';
COMMENT ON COLUMN lti_tool_contents.lti_tool_version IS 'Version of the LTI tool';
COMMENT ON COLUMN lti_tool_contents.lti_tool_name IS 'Learner-visible name of the tool.';
COMMENT ON COLUMN lti_tool_contents.lti_tool_description IS 'Learner-visible description of the tool, shown before they launch into it.';
COMMENT ON COLUMN lti_tool_contents.lti_tool_endpoint_url IS 'Actual endpoint for the LTI tool to display';
COMMENT ON COLUMN lti_tool_contents.lti_tool_privacy_level IS 'Indicate what we can share to the external tool such as learn ID, name and email address';
COMMENT ON COLUMN lti_tool_contents.lti_tool_modified_ts IS 'When the tool was last updated';
COMMENT ON COLUMN lti_tool_contents.lti_tool_custom_parameters IS 'Additional key-value pairs that get passed to the tool';
COMMENT ON COLUMN lti_tool_contents.lti_tool_passing_fraction IS 'If this tool wants to return grades to us. If so, we''ll provide outcome service information at launch time.';
COMMENT ON COLUMN lti_tool_contents.lti_tool_cml_content IS 'Learner-visible description of the tool, shown before they launch into it.';
COMMENT ON TABLE assessment_checkbox_reflect_questions IS 'Information of checkbox(Reflective / Ungraded) quiz questions';
COMMENT ON COLUMN assessment_checkbox_reflect_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_checkbox_reflect_questions.assessment_question_shuffle_options IS 'Answer options can either be displayed to the learner in the order in which they are listed within the authoring interface, or in a random order each time the learner attempts the assessment. If the answer option ordering is randomized, "assessment_question_shuffle_options" will be "t," and "f" otherwise';
COMMENT ON TABLE course_item_passing_states IS 'Each item in a course can be in one of three "states" with respect a learner passing the item.';
COMMENT ON COLUMN course_item_passing_states.course_item_passing_state_id IS 'Each item in a course can be in one of three "states" with respect a learner passing the item.  ';
COMMENT ON COLUMN course_item_passing_states.course_item_passing_state_desc IS '0 means the learner has not passed it, 1 means the learner has passed it but not verified their identity, and 2 means the learner has passed it and verified their identity.';
COMMENT ON TABLE assessment_text_exact_match_patterns IS '[No table description available]';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_display IS 'The JSON blob containing the question prompt. This is written in a custom Coursera markup language. The actual prompt text is encapsulated within key named "value."';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_text_exact_match_patterns.assessment_pattern_correct IS 'For regular expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE global_items IS 'Store of global items with unique item id''s. These item id''s differ from course_branch_item_id or course_item_id. course_branch_items (content embedded into a course version) were / are being migrated to global items, which allow the instructor to link items between different versions (branches) of the course as well as different courses.';
COMMENT ON COLUMN global_items.global_item_id IS 'A global identifier for an item. global items aren''t restricted to a particular course branch. Some global items can be linked to multiple course branches / courses.';
COMMENT ON COLUMN global_items.global_item_version IS 'Incremented when a global-item is edited and published, refers to the version of the item.
If the item is not an global item, this is NULL.
If the item is a frozen gobal item, this is the version of the atom that is referenced by the branch.
If the item is a non-frozen global item, we reference the global_items table to get the latest version number.
Note that even if a course branch references the latest version of an global_item rather than to an
explicit version, this value explicitly reflects the latest version of the atom at the time of load.';
COMMENT ON COLUMN global_items.global_item_name IS 'human readable name of this item. Authored by partners, and displayed to learners.';
COMMENT ON COLUMN global_items.is_global_item_version_latest IS 'TRUE if this global item content version is the latest version of the global item. This is a shortcut field which encompasses this.global_item_version_id > any.global_item_Version_id (for the same global_item_id)';
COMMENT ON COLUMN global_items.global_item_interaction_id IS 'ID used to store learner progress pertaining to this unit of global item content. New global items will have a 1:1 relation with interaction_id, however for historical reasons the general relation is n:1 for global_item_id:interactionID. ';
COMMENT ON COLUMN global_items.is_global_item_graded IS 'TRUE if this item is graded (not practice). Graded items will show up in the branch''s grading formula with a non-zero grading weight.';
COMMENT ON COLUMN global_items.global_item_content_type IS 'Each global item can be of exactly one time.';
COMMENT ON COLUMN global_items.global_item_content_type_id IS 'numeric ID representing the type (lecture, supplement, quiz, etc) of the item. Each atom must be of exactly one item type. ';
COMMENT ON COLUMN global_items.global_item_time_commitment IS 'Anticipated time it takes a learner to complete this unit of content (in minutes)';
COMMENT ON TABLE course_progress_learner_goals IS '[No table description available]';
COMMENT ON COLUMN course_progress_learner_goals.course_id IS 'Course ID';
COMMENT ON COLUMN course_progress_learner_goals.course_branch_id IS 'Course Version the learner created the goal on.';
COMMENT ON COLUMN course_progress_learner_goals.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_progress_learner_goals.created_at IS 'Timestamp at which the learner created this goal.';
COMMENT ON COLUMN course_progress_learner_goals.goal_uuid IS 'Unique ID to identify the goal.';
COMMENT ON COLUMN course_progress_learner_goals.goal_name IS 'Goal (content). e.g. "Learn 5 days a week", "Achieve a 3-day learning streak", etc.';
COMMENT ON COLUMN course_progress_learner_goals.goal_status IS 'Current status of the goal. Options: "COMPLETED", "NOT_STARTED", "IN_PROGRESS"';
COMMENT ON TABLE course_branches IS 'This table gives the course branch details along with course version names, as set by instructors on the course web page.';
COMMENT ON COLUMN course_branches.course_id IS '22 character unique string identifying an individual course.';
COMMENT ON COLUMN course_branches.course_branch_id IS 'Unique ID of the course branch. For original versions, the course_branch_id is the same as the course_id.';
COMMENT ON COLUMN course_branches.course_branch_changes_description IS 'A learner-facing summary of the changes in this branch.';
COMMENT ON COLUMN course_branches.authoring_course_branch_name IS 'Instructor-visible, free-form title of a course version.';
COMMENT ON COLUMN course_branches.authoring_course_branch_created_ts IS 'The timestamp when a branch was first created, either by the instructor or Courserian doing it on an instructor''s behalf. This does not represent the chronological order of when course branches went live to learners, because that is scheduled independently in sessions.';
COMMENT ON COLUMN course_branches.authoring_course_branch_launched_ts IS 'The timestamp at which branch was published.';
COMMENT ON TABLE programming_submission_parts IS 'Information of learner submissions to individual parts of a programming assignment';
COMMENT ON COLUMN programming_submission_parts.programming_assignment_id IS 'The universal id of the programming assignment.';
COMMENT ON COLUMN programming_submission_parts.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment.';
COMMENT ON COLUMN programming_submission_parts.programming_submission_id IS 'The universal submission id. ';
COMMENT ON COLUMN programming_submission_parts.programming_submission_part_type IS 'Type("multipart")';
COMMENT ON TABLE discussion_question_votes IS 'records when a discussion question was upvoted';
COMMENT ON COLUMN discussion_question_votes.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_question_votes.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN discussion_question_votes.discussion_question_id IS 'The id of the discussion question';
COMMENT ON COLUMN discussion_question_votes.discussion_question_vote_value IS '0 = nothing, 1 = upvote';
COMMENT ON COLUMN discussion_question_votes.discussion_question_vote_ts IS 'Timestamp of vote';
COMMENT ON COLUMN discussion_question_votes.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN discussion_question_votes.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE programming_assignment_submission_schema_parts IS 'Information of individual parts of a programming assignment';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_id IS 'Assignment that this programming schema part lives in.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_id IS 'This part''s id within the assignment.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_title IS 'Name of the submission.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_type IS 'The type ( "grid", "numeric", "regex")';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_order IS 'The order within the assignment (lowest comes first).';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_max_score IS 'Max score of the part.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_is_optional IS 'Whether this part is optional or not.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_part_xacgt8 IS 'The internal authoring version of the part, only used by authoring tools. Name shortened from ''programming_assignment_submission_schema_part_authoring_version'' for compatibility.';
COMMENT ON COLUMN programming_assignment_submission_schema_parts.programming_assignment_submission_schema_default_g663i6 IS 'The default incorrect feedback of a submission. Name shortened from ''programming_assignment_submission_schema_default_incorrect_feedback'' for compatibility.';
COMMENT ON TABLE course_branch_item_assessments IS 'For each course branch, provide the mapping between course branches and versioned assessments.';
COMMENT ON COLUMN course_branch_item_assessments.course_branch_id IS 'Course Version ID aka course branch ID';
COMMENT ON COLUMN course_branch_item_assessments.course_item_id IS 'Item ID - unique within the context of a course branch.';
COMMENT ON COLUMN course_branch_item_assessments.assessment_id IS 'Assessment ID - globally unique.';
COMMENT ON TABLE users_courses__certificate_payments IS '[No table description available]';
COMMENT ON COLUMN users_courses__certificate_payments.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN users_courses__certificate_payments.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN users_courses__certificate_payments.met_payment_condition IS 'No column description available';
COMMENT ON COLUMN users_courses__certificate_payments.was_payment IS 'No column description available';
COMMENT ON COLUMN users_courses__certificate_payments.was_finaid_grant IS 'No column description available';
COMMENT ON COLUMN users_courses__certificate_payments.was_group_sponsored IS 'No column description available';
COMMENT ON TABLE programming_submission_part_grid_grading_statuses IS 'The status of grading of a submission to an asynchronously graded question';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_assignment_id IS 'The universal Id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_assignment_submission_schema_part_id IS 'The universal part id of the programming assignment.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_id IS 'The universal submission Id. ';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_part_grid_grading_status_pgrtf5 IS 'The grid executorRun Id. Only for internal use. Name shortened from ''programming_submission_part_grid_grading_status_executor_run_id'' for compatibility.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_part_grid_grading_status_x21exo IS 'The timestamp of the start of the part''s executor run. Name shortened from ''programming_submission_part_grid_grading_status_executor_run_start_ts'' for compatibility.';
COMMENT ON COLUMN programming_submission_part_grid_grading_statuses.programming_submission_part_grid_grading_status_jzmjz1 IS 'The current status of the executor run. Type("PENDING", "SUCCESSED", "FAILED"). Name shortened from ''programming_submission_part_grid_grading_status_executor_run_status'' for compatibility.';
COMMENT ON TABLE specializations IS 'This table gives information about specializations on Coursera.
Consists of base and non-base specialization versions.
SDP is short for Specialization Display Page.
s12n is short for Specialization.';
COMMENT ON COLUMN specializations.specialization_id IS 'Unique ID for a Coursera specialization. Non-base specialization versions begin with a prefix of ''child~''';
COMMENT ON COLUMN specializations.specialization_slug IS 'Short name that is used in the SDP''s URL
This column is not unique, since specializations versions share the same slug.';
COMMENT ON COLUMN specializations.specialization_name IS 'Display name that is shown in the SDP.
This column is not unique, since s12n versions share the same name';
COMMENT ON COLUMN specializations.specialization_display_page_launch_ts IS 'Timestamp on which the specialization''s display page was launched and became visible to the users
This column will stay populated with the s12n''s "birthdate" even if the s12n is unlaunched.';
COMMENT ON COLUMN specializations.sequence_branch_id IS 'The sequence of courses that are assigned to this table.';
COMMENT ON COLUMN specializations.specialization_version IS 'The version number of the specialization, based on when the version was first drafted';
COMMENT ON COLUMN specializations.base_specialization_id IS 'The base for this s12n version. When this s12n is a base version, it will equal
to specialization_id.
It should never contain a prefix of ''child~''.';
COMMENT ON COLUMN specializations.specialization_primary_domain IS 'Primary domain in display format, as set on the Specialization Authoring Page.
One primary domain per specialization. Can take these values:
[NULL]
Arts and Humanities
Business
Computer Science
Data Science
Language Learning
Life Sciences
Personal Development
Physical Science and Engineering
Social Sciences';
COMMENT ON COLUMN specializations.specialization_primary_subdomain IS 'Primary sub-domain in display format, as set on the Specialization Authoring Page.';
COMMENT ON COLUMN specializations.specialization_language IS 'No column description available';
COMMENT ON COLUMN specializations.premium_grading_enabled_courses_count IS 'No column description available';
COMMENT ON COLUMN specializations.specialization_type IS 'No column description available';
COMMENT ON TABLE feedback_course_comments IS 'Contains the contents of course reviews';
COMMENT ON COLUMN feedback_course_comments.course_id IS 'Course id for the course receiving reviews';
COMMENT ON COLUMN feedback_course_comments.feedback_system IS 'Feedback system: STAR for course reviews';
COMMENT ON COLUMN feedback_course_comments.imperial_feedback_user_id IS 'Encrypted Coursera user id for imperial feedback data.';
COMMENT ON COLUMN feedback_course_comments.feedback_category IS 'For course reviews, the only category should be "generic"';
COMMENT ON COLUMN feedback_course_comments.feedback_text IS 'CML text of the review';
COMMENT ON COLUMN feedback_course_comments.feedback_ts IS 'Timestamp when the feedback was left';
COMMENT ON COLUMN feedback_course_comments.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE imperial_gdm_gmph_user_ids IS 'Encrypted user id mapping table. Use this table to connect learner data from exports, which identifies imperial learners using imperial_user_id, to course-scoped data from external surveys.      ';
COMMENT ON COLUMN imperial_gdm_gmph_user_ids.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN imperial_gdm_gmph_user_ids.gdm_gmph_user_id IS '';
COMMENT ON TABLE team_review_contents IS 'This table contains content specific to teammate review global-items (linkable items).';
COMMENT ON COLUMN team_review_contents.global_item_id IS 'Globally unique ID for item (independently sharable item contents unit)';
COMMENT ON COLUMN team_review_contents.global_item_version IS 'Version ID for the global item. Global item contents are immutable, so when changes are made a new global_item_version is issued that is 1 greater than the previous version. version IDs start at 1.';
COMMENT ON COLUMN team_review_contents.team_review_assignment_id IS 'Versioned ID of the teammate review assessment associated with this global-item.';
COMMENT ON COLUMN team_review_contents.team_review_passing_fraction IS 'The ratio of actual score to maximum score (passing threshold) needed to pass the assessment.';
COMMENT ON TABLE staff_graded_assignment_submission_evaluations IS 'This evaluation record is what a grader produces when they are grading a particular submission.
An evaluation will contain a number of staff_graded_assignment_submission_evaluation_response_parts that are each linked to a staff_graded_assignment_submission_evaluation_schema_part.
In certain cases, there is no referenced staff_graded_assignment_submission_id because the assignment submission schema only consists of "off-platform" submission parts that do not actually require a learner submission. In these cases, partners can create an evaluation whenever they want.
Where there are multiple evaluations per submission, we will always use the latest evaluation.';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.kvs_id IS 'primary identifier for evaluation';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.staff_graded_assignment_submission_evaluation_version IS 'evaluation version';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.modified_ts IS 'when evaluation was last updated';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.staff_graded_assignment_submission_id IS '[optional] this will reference a submission if a submission is required (most cases). for assignments with only "offPlatform" parts this may be null as no submission is required.';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.evaluated_by IS '[optional] user id of grader completing the evaluation.  should always be present, but there are a handful of records where it is not. ';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.evaluated_at IS '[optional] when the evaluation was last saved';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.staff_graded_assignment_id IS 'staff graded assignment id';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.staff_graded_assignment_version IS 'staff graded assignment version';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.staff_graded_assignment_submission_evaluation_id IS 'primary identifier for evaluation (extracted from kvs_id)';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.precondition IS 'a product of our underlying "workflow" model. this represents all the completed upstream tasks that are inputs to this evaluation. in the case of staff graded assignments, it''s typically the submission id. this particular implementation detail should be largely irrelevant here. ';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.precondition_hash IS 'this is the hashed version of the above precondition.';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.submitter_id IS 'an id representing either an individual user or a team (if it''s a team-submission). submitted_by is the individual submitting and submitter_id is the individual or team they are submitting as. ';
COMMENT ON COLUMN staff_graded_assignment_submission_evaluations.completed_at IS 'indicates when grading is first completed and grade is sent to the gradebook. the grade may not be visible to learners depending on grade visibility status. ';
COMMENT ON TABLE demographics_question_types IS 'Stores question types for the demographics questions.';
COMMENT ON COLUMN demographics_question_types.question_type_id IS 'Indicates the type of answer required by the question: 0 (mulitple choice), 1 (integer), 2 (text).
';
COMMENT ON COLUMN demographics_question_types.question_type_desc IS 'Describes the answer required by each question type: 0 (multiple choice), 1 (integer), 2 (text).';
COMMENT ON TABLE assessments IS 'Table of all the assessments / quizzes.
[Copied from RDE guide]: Quizzes are automatically-graded assignments used to test learner knowledge in a course.
A quiz, referred to as an "assessment", could be a multiple-choice exam or an in-video quiz.
The assessment_types and assessment_question_types tables describe the type of quizzes and the type of questions, respectively.
The assessments table contains information for each quiz. The assessment_base_id field uniquely identifies the quiz within a course, and the assessment_id field is a combination of the assessment_base_id field and the assessment_version.
The assessment_questions table contains information for each question.
Here, the assessment_question_base_id field uniquely identifies a question within a course, and the assessment_question_id field is a combination of the assessment_question_base_id field and the assessment_question_version .';
COMMENT ON COLUMN assessments.assessment_id IS 'Each quiz is assigned a unique id that is a combination of a base id and version. ';
COMMENT ON COLUMN assessments.assessment_base_id IS 'Every quiz has a globally unique base id that is associated with a course.
';
COMMENT ON COLUMN assessments.assessment_version IS 'Whenever a quiz is updated the base id is kept the same but the version and assessment id are updated.';
COMMENT ON COLUMN assessments.assessment_type_id IS 'Type of assessment so that it can be joined with the corresponding type specific tables.';
COMMENT ON COLUMN assessments.assessment_update_ts IS 'Update timestamp for a change to the assessment.';
COMMENT ON COLUMN assessments.assessment_passing_fraction IS 'No column description available';
COMMENT ON COLUMN assessments.assessment_feedback_configuration IS 'No column description available';
COMMENT ON TABLE course_item_grades IS '[No table description available]';
COMMENT ON COLUMN course_item_grades.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN course_item_grades.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_item_grades.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN course_item_grades.course_item_grade_ts IS 'No column description available';
COMMENT ON COLUMN course_item_grades.course_item_passing_state_id IS 'Each item in a course can be in one of three "states" with respect a learner passing the item.  ';
COMMENT ON COLUMN course_item_grades.course_item_grade_overall IS 'No column description available';
COMMENT ON TABLE course_branch_modules IS 'The modules of course branches given by learner course branch id, along with their
order in the branch.';
COMMENT ON COLUMN course_branch_modules.course_branch_id IS 'The learner course branch id of this course branch.';
COMMENT ON COLUMN course_branch_modules.course_module_id IS 'The id of the module within the authoring course branch.';
COMMENT ON COLUMN course_branch_modules.course_branch_module_order IS 'The position at which the module occurs in order in the course branch.';
COMMENT ON COLUMN course_branch_modules.course_branch_module_name IS 'The name of the module.';
COMMENT ON COLUMN course_branch_modules.course_branch_module_desc IS 'A description of the module at a higher level of detail than the name.';
COMMENT ON TABLE course_branch_items IS 'A single content item in a class such as lecture, quiz or peer review assignment.
Contains data for both legacy non-global-items and new global-items.
Contains type-specific data for quiz/exam and lecture items.
- This table includes data on published quizzes/exams/lectures belonging to branches in real courses.
- Data are included for both quizzes/exams/lectures stored as global items (found global_item store) and
quizzes/exams/lectures stored as non-atoms (embedded into the course material of a branch).
- If a particular quiz/exam/lectures global item is referenced from multiple branches, this will
correspond to multiple branch-item id pairs in this table.
- If a quiz/exam/lectures global item exists but is not referenced from any course branches considered
here, it will not have a row in this table.';
COMMENT ON COLUMN course_branch_items.course_branch_id IS 'The id of this version of the course. This id is globally unique.';
COMMENT ON COLUMN course_branch_items.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN course_branch_items.course_branch_atom_is_frozen IS '#### DEPRECATED. Will be dropped EOY 2021. #### Use is_global_item_version_frozen.
If the item is not an atom, this is NULL.
If the item is a frozen atom, this is true. (not at latest atom version)
If the item is a non-frozen atom, this is false. (at latest atom version)';
COMMENT ON COLUMN course_branch_items.course_branch_item_name IS 'The name of an item, as seen in the learner view of the course. If the item is a global_item, we
reference the global_iems table to look up the corresponding name.';
COMMENT ON COLUMN course_branch_items.is_graded IS 'True if item is graded, false otherwise.';
COMMENT ON COLUMN course_branch_items.course_item_type_id IS 'This field contains the type of this item - both course_branch_item and global_item
See course_item_types to get details about course_branch_item types, and global_item_types to get details about global_items.';
COMMENT ON COLUMN course_branch_items.interaction_id IS 'ID used to store learner progress interactions on items.
learner hierarchy uses interaction_id + user_id to store all progress events.
interaction_id has two forms (global item or course~item), but should be treated as an opaque id.
If the item is an global item, this column is derived from the global items stored content_id (may be global item or course~item)
If the item is a non-global-item, this column is derived from the item''s course_id&item_id';
COMMENT ON COLUMN course_branch_items.course_branch_item_optional IS '### DEPRECATED. Will be dropped by EOY 2021. ###
Defaulted to FALSE.';
COMMENT ON COLUMN course_branch_items.course_lesson_id IS 'Unique lesson ID. Join with course_branch_lessons to get details about the lesson.';
COMMENT ON COLUMN course_branch_items.course_branch_item_order IS 'The order of an item within a particular lesson, with "0" indicating the first item in the lesson.';
COMMENT ON COLUMN course_branch_items.is_in_honor_lesson IS 'Flag to identify honor items';
COMMENT ON COLUMN course_branch_items.course_branch_item_lecture_duration_ms IS 'The duration of the lecture video in milliseconds. This value is set automatically
based on the length of the video and cannot be adjusted by the author.
Field is nullable but should be null for very few courses. Null values represent
historical data that were not properly populated with a duration when initially
published.';
COMMENT ON COLUMN course_branch_items.quiz_assessment_id IS '22 character unique string identifying an individual assessment';
COMMENT ON COLUMN course_branch_items.quiz_is_graded IS 'If true, scores on this quiz will be considered when computing the overall course grade (though
it may be assigned weight 0) and successful completion may be required in order to pass the
course. This corresponds to "Graded Quiz" in on-platform authoring.
If false, scores on this quiz will never figure into the overall course graded or be required via
the grading formula to pass the course. This corresponds to "Practice Quiz" in on-platform
authoring.';
COMMENT ON COLUMN course_branch_items.global_item_id IS 'This is a globally unique Item ID. Refer to the documentation on item_id above. global_item_id''s refer to content that are stored outside the course branch, allowing them to be used in multiple branches and/or courses. Combine this table with global_items on this column to get item details.';
COMMENT ON COLUMN course_branch_items.global_item_version IS 'Incremented when a global-item is edited and published, refers to the version of the item.
If the item is not an global item, this is NULL.
If the item is a frozen gobal item, this is the version of the atom that is referenced by the branch.
If the item is a non-frozen global item, we reference the global_items table to get the latest version number.
Note that even if a course branch references the latest version of an global_item rather than to an
explicit version, this value explicitly reflects the latest version of the atom at the time of load.';
COMMENT ON COLUMN course_branch_items.is_global_item_version_frozen IS 'If the item is not an global item, this is NULL.
If the item is a frozen global item, this is true. (not at latest atom version)
If the item is a non-frozen global item, this is false. (at latest atom version)';
COMMENT ON COLUMN course_branch_items.global_item_time_commitment IS 'Anticipated time it takes a learner to complete this item (in minutes)';
COMMENT ON COLUMN course_branch_items.item_weight_in_course_branch_percentage IS 'Weight of item towards the Course Grade, represented as percentage.';
COMMENT ON TABLE assessment_regex_patterns IS '[No table description available]';
COMMENT ON COLUMN assessment_regex_patterns.assessment_question_id IS 'The id that uniquely identifies a question in an assessment';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_id IS 'No column description available';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_regex IS 'No column description available';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_feedback IS 'The text that is displayed to learners upon answering a question that matches the pattern.';
COMMENT ON COLUMN assessment_regex_patterns.assessment_pattern_correct IS 'For regular expression type questions, instructors can insert both correct and incorrect answer patterns in order to provide learners with tailored feedback based on common solutions or misconceptions. This field indicates whether the pattern was one that corresponded to a correct solution (t) or an incorrect solution (f).';
COMMENT ON TABLE discussion_answer_votes IS 'records when a discussion answer was upvoted or revoked.';
COMMENT ON COLUMN discussion_answer_votes.imperial_discussions_user_id IS 'Encrypted Coursera user id for imperial discussions data.';
COMMENT ON COLUMN discussion_answer_votes.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN discussion_answer_votes.discussion_answer_id IS 'The discussion answer to which the vote was applied';
COMMENT ON COLUMN discussion_answer_votes.discussion_answer_vote_value IS 'Discussion answers can only be upvoted on the Phoenix platform; there is no such thing as a downvoting an answer. Upon upvoting, the value of this column is 1. However, if a user "revokes" their upvote, the value will instead be 0.';
COMMENT ON COLUMN discussion_answer_votes.discussion_answer_vote_ts IS 'The timestamp of when the vote was applied';
COMMENT ON COLUMN discussion_answer_votes.on_demand_session_id IS 'unique identifer for a course''s session on the Phoenix platform';
COMMENT ON COLUMN discussion_answer_votes.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON TABLE staff_graded_assignments IS 'This table represents the assignment schema for our staff-graded assignments. These documents are versioned.
This type of assignment is comprised of a submission schema that describes what human-gradable work a learner needs to submit, as well as an evaluation schema that describes the rubric a grader will use to grade that submission.
We can also include auto-graded quiz questions that are defined in a separate quiz assessment document. This is linked to a staff-graded assignment via an optional quiz assessment id.
These staff graded assignments can be assigned to either individuals or teams.';
COMMENT ON COLUMN staff_graded_assignments.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN staff_graded_assignments.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN staff_graded_assignments.staff_graded_assignment_id IS 'staff graded assignment id';
COMMENT ON COLUMN staff_graded_assignments.staff_graded_assignment_version IS 'staff graded assignment version';
COMMENT ON COLUMN staff_graded_assignments.staff_graded_assignment_ts IS 'time when staff graded assignment version was created';
COMMENT ON COLUMN staff_graded_assignments.grading_passing_fraction IS 'learner grade must exceed this threshold to pass the assignment';
COMMENT ON COLUMN staff_graded_assignments.is_team_submission_enabled IS 'if true, it means the learner will submit and receive a grade as a team. the submitter id will be a team id.';
COMMENT ON COLUMN staff_graded_assignments.grader_instructions IS 'additional instructions that a grader may receive when grading a submission';
COMMENT ON TABLE assessment_text_exact_match_questions IS 'Information of text exact match questions';
COMMENT ON COLUMN assessment_text_exact_match_questions.assessment_question_id IS 'unique question id of an assessment';
COMMENT ON COLUMN assessment_text_exact_match_questions.default_incorrect_feedback IS 'The default feedback to the learner should the learner answer the question incorrectly.';
COMMENT ON TABLE users_courses__s12n_enrollments IS '[No table description available]';
COMMENT ON COLUMN users_courses__s12n_enrollments.imperial_user_id IS 'Encrypted Coursera user id for imperial data.';
COMMENT ON COLUMN users_courses__s12n_enrollments.course_id IS 'Course ID';
COMMENT ON COLUMN users_courses__s12n_enrollments.specialization_id IS 'Specialization (s12n) ID of the Specialization that the course is a part of.';
COMMENT ON COLUMN users_courses__s12n_enrollments.is_specialization_enrollment_complete IS 'Boolean to indicate if the learner has completed all the requirements for the s12n.';
COMMENT ON TABLE notebook_workspace_launchers IS 'Warning: This table includes both notebook item launchers and lab item(ungraded lab and programing assignment with lab) launchers.';
COMMENT ON COLUMN notebook_workspace_launchers.course_id IS 'Foreign Key Documentation from prod.course_modules(course_id):';
COMMENT ON COLUMN notebook_workspace_launchers.course_branch_id IS 'Contain NULL values for all feedback before 2017-02-23 18:42:49.206,
when our site did not instrument which course branch the user gave
feedback to.
After this date, all values should be non-NULL to represent whether
the user gave feedback to the original version or a new version.';
COMMENT ON COLUMN notebook_workspace_launchers.course_item_id IS '5 character alphanumeric string identifying an individual item within a course.
Items that have the same id that are in different branches of the same course are considered to be
the same for the purposes of progress and grade computations. For example, if you complete item
xxxxx in branch A, then you have completed it in branch B even if item xxxxx in branch B is very
different from item xxxxx in branch A.
This id is unique for a given course_branch_id but is
not globally unique. Therefore, it should typically be used in conjunction with
course_branch_id for a unique combination.
Note that atoms still have item IDs.';
COMMENT ON COLUMN notebook_workspace_launchers.notebook_workspace_launcher_id IS 'No column description available';
COMMENT ON COLUMN notebook_workspace_launchers.notebook_workspace_launch_path IS 'No column description available';
COMMENT ON COLUMN notebook_workspace_launchers.notebook_workspace_template_base_id IS 'No column description available';
COMMENT ON TABLE assessment_math_expression_questions IS 'math assessment questions and default text displayed to learners upon answering the questions incorrectly';
COMMENT ON COLUMN assessment_math_expression_questions.assessment_question_id IS 'the unique question id in an assessment';
COMMENT ON COLUMN assessment_math_expression_questions.default_incorrect_feedback IS 'The text that is displayed to learners upon answering a question incorrectly. In the authoring interface, this corresponds to the "Explain Incorrect Answer (optional)" field';
