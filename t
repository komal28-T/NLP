Got it — let’s do a clean, correct, no-error workflow from scratch.
Follow exactly step-by-step (copy carefully, no extra characters).

🚀 PART 1 — Setup Repo & Push to GitHub
🔹 Step 1: Create project folder
mkdir aipd-demo
cd aipd-demo
🔹 Step 2: Initialize Git
git init
🔹 Step 3: Create a file
echo "# AI Project" > README.md
🔹 Step 4: Add & commit
git add .
git commit -m "Initial commit"
🔹 Step 5: Create repo on GitHub
Go to GitHub → New Repository
Name: aipd-demo
DO NOT add README
🔹 Step 6: Connect & push
git remote add origin https://github.com/YOUR_USERNAME/aipd-demo.git
git branch -M main
git push -u origin main
🚀 PART 2 — Create Feature Branch & Push
🔹 Step 7: Create branch
git checkout -b feature-1
🔹 Step 8: Add new file
echo "print('Feature branch')" > model.py
🔹 Step 9: Commit & push
git add .
git commit -m "Added model.py"
git push origin feature-1
🚀 PART 3 — Create Pull Request (GitHub)

On GitHub:

Click Compare & Pull Request

Check:

base: main
compare: feature-1
Click Create Pull Request
Click Merge pull request → Confirm
🚀 PART 4 — Update Local Main (VERY IMPORTANT)
git checkout main
git pull origin main

👉 Now:

ls

✅ You should see:

README.md
model.py
🚀 PART 5 — Create Merge Conflict (for learning)
🔹 Step 1: Create new branch
git checkout -b feature-conflict
🔹 Step 2: Modify file
echo "print('Feature version')" > model.py
git add .
git commit -m "Feature change"
🔹 Step 3: Switch to main
git checkout main
🔹 Step 4: Modify same file differently
echo "print('Main version')" > model.py
git add .
git commit -m "Main change"
🔹 Step 5: Merge → 💥 conflict
git checkout feature-conflict
git merge main
💥 You will see:
CONFLICT (content): Merge conflict in model.py
🔹 Step 6: Resolve conflict

Open file:

<<<<<<< HEAD
print('Feature version')
=======
print('Main version')
>>>>>>> main

Edit to:

print('Feature version')
print('Main version')
🔹 Step 7: Final commit
git add .
git commit -m "Resolved conflict"
🚀 PART 6 — Push & Merge Again
git push origin feature-conflict

Then on GitHub:

Create PR
Resolve conflict (if shown)
Merge
🔹 Final sync
git checkout main
git pull origin main
