/* Script for loading export data from CSV files to a Postgres database */
\COPY discussion_question_flags FROM 'discussion_question_flags.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_review_part_free_responses FROM 'peer_review_part_free_responses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_reflect_questions FROM 'assessment_reflect_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_review_assignment_contents FROM 'peer_review_assignment_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_assignment_submission_schema_part_grid_schemas FROM 'programming_assignment_submission_schema_part_grid_schemas.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_modules FROM 'course_modules.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_assignment_review_schema_part_options FROM 'peer_assignment_review_schema_part_options.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY specializations_courses FROM 'specializations_courses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_item_assessments FROM 'course_item_assessments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_questions FROM 'assessment_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_lessons FROM 'course_lessons.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_assignment_review_schema_parts FROM 'peer_assignment_review_schema_parts.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_options FROM 'assessment_options.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY quiz_assessment_contents FROM 'quiz_assessment_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_assignment_submission_schema_part_xbkvdx FROM 'programming_assignment_submission_schema_part_possible_responses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_pattern_flag_types FROM 'assessment_pattern_flag_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_item_types FROM 'course_item_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY ecb_evaluators FROM 'ecb_evaluators.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_item_peer_assignments FROM 'course_item_peer_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_pattern_types FROM 'assessment_pattern_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_comments FROM 'peer_comments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_submission_part_urls FROM 'peer_submission_part_urls.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_submissions FROM 'peer_submissions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_single_numeric_questions FROM 'assessment_single_numeric_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_submissions FROM 'programming_submissions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_assignments FROM 'programming_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_assessments_questions FROM 'assessment_assessments_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_assignment_submission_schema_parts FROM 'peer_assignment_submission_schema_parts.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_checkbox_questions FROM 'assessment_checkbox_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_response_patterns FROM 'assessment_response_patterns.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_progress FROM 'course_progress.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_math_expression_patterns FROM 'assessment_math_expression_patterns.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_submission_part_evaluations FROM 'programming_submission_part_evaluations.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_grades FROM 'course_branch_grades.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY feedback_item_ratings FROM 'feedback_item_ratings.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY demographics_questions FROM 'demographics_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_item_peer_assignments FROM 'course_branch_item_peer_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_question_followings FROM 'discussion_question_followings.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_regex_questions FROM 'assessment_regex_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_scope_types FROM 'assessment_scope_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_submission_part_text_submissions FROM 'programming_submission_part_text_submissions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY global_item_types FROM 'global_item_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY courses FROM 'courses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_mcq_reflect_questions FROM 'assessment_mcq_reflect_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_assignment_contents FROM 'programming_assignment_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY lecture_contents FROM 'lecture_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY demographics_choices FROM 'demographics_choices.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY staff_graded_assignment_submissions FROM 'staff_graded_assignment_submissions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY demographics_answers FROM 'demographics_answers.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_submission_part_scores FROM 'peer_submission_part_scores.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY staff_graded_assignments_evaluation_responses FROM 'staff_graded_assignments_evaluation_responses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY notebook_workspaces FROM 'notebook_workspaces.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_answer_flags FROM 'discussion_answer_flags.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY users FROM 'users.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_item_programming_assignments FROM 'course_item_programming_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY feedback_course_ratings FROM 'feedback_course_ratings.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_review_part_choices FROM 'peer_review_part_choices.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_items FROM 'course_items.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_types FROM 'assessment_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_questions FROM 'discussion_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_course_forums FROM 'discussion_course_forums.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY users_courses__degree_program_memberships FROM 'users_courses__degree_program_memberships.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_responses FROM 'assessment_responses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_answers FROM 'discussion_answers.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_regex_pattern_flags FROM 'assessment_regex_pattern_flags.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_passing_states FROM 'course_passing_states.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY on_demand_session_memberships FROM 'on_demand_session_memberships.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_progress_state_types FROM 'course_progress_state_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_assignments FROM 'peer_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_single_numeric_patterns FROM 'assessment_single_numeric_patterns.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_item_programming_assignments FROM 'course_branch_item_programming_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY staff_graded_assignment_final_grades FROM 'staff_graded_assignment_final_grades.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_submission_part_grid_submissions FROM 'programming_submission_part_grid_submissions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_skips FROM 'peer_skips.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_memberships FROM 'course_memberships.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_actions FROM 'assessment_actions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_mcq_questions FROM 'assessment_mcq_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY feedback_item_comments FROM 'feedback_item_comments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_formative_quiz_grades FROM 'course_formative_quiz_grades.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_lessons FROM 'course_branch_lessons.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY reading_contents FROM 'reading_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_response_options FROM 'assessment_response_options.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY ecb_evaluation_requests FROM 'ecb_evaluation_requests.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_question_types FROM 'assessment_question_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY ecb_engines FROM 'ecb_engines.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_reviews FROM 'peer_reviews.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY on_demand_sessions FROM 'on_demand_sessions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY peer_submission_part_free_responses FROM 'peer_submission_part_free_responses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_grades FROM 'course_grades.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY lti_tool_contents FROM 'lti_tool_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_checkbox_reflect_questions FROM 'assessment_checkbox_reflect_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_item_passing_states FROM 'course_item_passing_states.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_text_exact_match_patterns FROM 'assessment_text_exact_match_patterns.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY global_items FROM 'global_items.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_progress_learner_goals FROM 'course_progress_learner_goals.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branches FROM 'course_branches.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_submission_parts FROM 'programming_submission_parts.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_question_votes FROM 'discussion_question_votes.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_assignment_submission_schema_parts FROM 'programming_assignment_submission_schema_parts.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_item_assessments FROM 'course_branch_item_assessments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY users_courses__certificate_payments FROM 'users_courses__certificate_payments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY programming_submission_part_grid_grading_statuses FROM 'programming_submission_part_grid_grading_statuses.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY specializations FROM 'specializations.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY feedback_course_comments FROM 'feedback_course_comments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY imperial_gdm_gmph_user_ids FROM 'imperial_gdm_gmph_user_ids.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY team_review_contents FROM 'team_review_contents.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY staff_graded_assignment_submission_evaluations FROM 'staff_graded_assignment_submission_evaluations.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY demographics_question_types FROM 'demographics_question_types.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessments FROM 'assessments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_item_grades FROM 'course_item_grades.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_modules FROM 'course_branch_modules.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY course_branch_items FROM 'course_branch_items.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_regex_patterns FROM 'assessment_regex_patterns.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY discussion_answer_votes FROM 'discussion_answer_votes.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY staff_graded_assignments FROM 'staff_graded_assignments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_text_exact_match_questions FROM 'assessment_text_exact_match_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY users_courses__s12n_enrollments FROM 'users_courses__s12n_enrollments.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY notebook_workspace_launchers FROM 'notebook_workspace_launchers.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
\COPY assessment_math_expression_questions FROM 'assessment_math_expression_questions.csv' WITH CSV DELIMITER ',' QUOTE '"' ESCAPE '\' HEADER;
