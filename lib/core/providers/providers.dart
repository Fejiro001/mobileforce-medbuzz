import 'package:MedBuzz/core/database/diet_reminderDB.dart';
import 'package:MedBuzz/core/database/medication_data.dart';
import 'package:MedBuzz/core/database/medication_history.dart';
import 'package:MedBuzz/core/database/notification_data.dart';
import 'package:MedBuzz/core/database/user_db.dart';
import 'package:MedBuzz/core/database/waterReminderData.dart';
import 'package:MedBuzz/core/database/fitness_reminder.dart';
import 'package:MedBuzz/core/database/water_taken_data.dart';
import 'package:MedBuzz/ui/darkmode/dark_mode_model.dart';
import 'package:MedBuzz/ui/views/all_reminders/all_reminders_view_model.dart';
import 'package:MedBuzz/ui/views/fitness_reminders/all_fitness_reminders_model.dart';
import 'package:MedBuzz/ui/views/diet_reminders/diet_reminders_model.dart';
import 'package:MedBuzz/ui/views/home_screen/home_screen_model.dart';
import 'package:MedBuzz/ui/views/medication_reminders/all_medications_reminder_model.dart';
import 'package:MedBuzz/ui/views/notification_tone/notification_tone_model.dart';
import 'package:MedBuzz/ui/views/reminder_description_card/new_all_reminders_model.dart';
import 'package:MedBuzz/ui/views/reminder_description_card/new_fitness_card/fitness_card_model.dart';
import 'package:MedBuzz/ui/views/reminder_description_card/new_medication_card/medication_card_model.dart';
import 'package:MedBuzz/ui/views/reminder_description_card/reminder_description_card_model.dart';

import 'package:MedBuzz/ui/views/schedule-appointment/schedule_appointment_screen_model.dart';
import 'package:MedBuzz/ui/views/snooze_reminder/confirmation_or_snooze_model.dart';
import 'package:MedBuzz/ui/views/water_reminders/schedule_water_reminder_model.dart';
import 'package:MedBuzz/core/database/appointmentData.dart';
import 'package:provider/provider.dart';

import '../database/fitness_reminder.dart';

//Add your view models in this widget

final providers = <SingleChildCloneableWidget>[
  ChangeNotifierProvider(create: (_) => FitnessSchedulesModel()),
  ChangeNotifierProvider(create: (_) => ConfirmOrSnoozeModel()),
  ChangeNotifierProvider(create: (_) => DietReminderModel()),
  ChangeNotifierProvider(create: (_) => ScheduleWaterReminderViewModel()),
  ChangeNotifierProvider(create: (_) => AllRemindersViewModel()),
  ChangeNotifierProvider(create: (_) => MedicationData()),
  ChangeNotifierProvider(create: (_) => AppointmentData()),
  ChangeNotifierProvider(create: (_) => HomeScreenModel()),
  ChangeNotifierProvider(create: (_) => WaterReminderData()),
  ChangeNotifierProvider(create: (_) => WaterTakenData()),
  ChangeNotifierProvider(create: (_) => ScheduleAppointmentModel()),
  ChangeNotifierProvider(create: (_) => MedicationsSchedulesModel()),
  ChangeNotifierProvider(create: (_) => DietReminderDB()),
  ChangeNotifierProvider(create: (_) => FitnessReminderCRUD()),
  ChangeNotifierProvider(create: (_) => DarkModeModel()),
  ChangeNotifierProvider(create: (_) => UserCrud()),
  ChangeNotifierProvider(create: (_) => MedicationHistoryData()),
  ChangeNotifierProvider(create: (_) => NotificationData()),
  ChangeNotifierProvider(create: (_) => NewMedicationCardModel()),
  ChangeNotifierProvider(create: (_) => NewFitnessCardModel()),
  ChangeNotifierProvider(create: (_) => ReminderDescriptionCardModel()),
  ChangeNotifierProvider(create: (_) => NewAllReminderModel()),
  ChangeNotifierProvider(create: (_) => NotificationToneModel()),
];

//final dietProviders = <SingleChildCloneableWidget>[
//
//];
