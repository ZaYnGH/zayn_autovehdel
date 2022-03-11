-- Config
Zayn_autovehdel_Config = {}

-- Framework
Zayn_autovehdel_Config.Framework = ESX

Zayn_autovehdel_Config.getSharedObject = 'esx:getSharedObject'
--

-- Χρόνος μέχρι να γίνει σβήσιμο οχημάτων
Zayn_autovehdel_Config.VehDelTimer = 5 -- Σε λεπτά

-- Χρόνος μέχρι τα επόμενα 5 λέπτα
Zayn_autovehdel_Config.VehDelBreak = 10 -- Σε λεπτά

-- Distance away to delete vehicles
Zayn_autovehdel_Config.VehDelDistance = 100

-- Distance away to notify for vehicle delete 
Zayn_autovehdel_Config.VehDelDistanceNoti = 500

-- About to be deleted in 5 minutes Noti (Notification 1)
Zayn_autovehdel_Config.Noti1 = '[VEHICLE - DELETER] Θα γίνει προγραμματισμένο σβήσιμο οχημάτων σε πέντε λεπτά σε οχήματα χωρίς οδηγό στο garage και την πλατεία.'

-- Vehicles deleted Noti (Notification 2)
Zayn_autovehdel_Config.Noti2 = '[VEHICLE - DELETER] Έχουν διαγραφτεί όλα τα οχήματα χωρίς οδηγό στο garage και την πλατεία.'