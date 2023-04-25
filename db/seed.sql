INSERT INTO department (name)
VALUES ("C4"),
       ("C2"),
       ("C3");

INSERT INTO role(title, salary, department_id)
VALUES ("SSRI", 400, 3),
       ("Opioid narcotic", 100, 2),
       ("Statin",600, 1),
       ("Beta-blocker",300, 1),
       ("Benzodiazepine", 250, 3);


INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES ("Lexapro","Escitalopram", 1),
       ("Paxil","Paroxetine", 1),
       ("Duragesic Skin Patch", "Fentanyl", 2),
       ("Vicodin", "Acetaminophen Hydrocodone", 2),
       ("Xanax", "Alprazolam", 5),
       ("Prozac", "Fluoxetine", 1),
       ("Lipitor", "Atorvastatin", 3),
       ("Percocet", "Acetaminophen Oxycodone", 2),
       ("Lopressor", "Metoprolol", 4 ),
       ("Coreg", "Carvedilol", 4),
       ("Valium", "Diazepam", 5),
       ("Ambien", "Zolpidem", 5),
       ("Crestor", "Rosuvastatin", 3);
