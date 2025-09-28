# 🚀 নাগরীবাসী এক্সপ্রেস - Deployment Guide

## 📋 Prerequisites
- Python 3.8+
- pip
- Git

## 🌐 Hosting Options

### Option 1: Heroku (Recommended for beginners)

#### Step 1: Heroku Account তৈরি করুন
1. [Heroku.com](https://heroku.com) এ যান
2. Free account তৈরি করুন

#### Step 2: Heroku CLI Install করুন
```bash
# Windows
# Download from: https://devcenter.heroku.com/articles/heroku-cli

# Mac
brew install heroku/brew/heroku

# Linux
curl https://cli-assets.heroku.com/install.sh | sh
```

#### Step 3: Heroku App তৈরি করুন
```bash
# Login
heroku login

# Create app
heroku create nagaribashi-express

# Set environment variables
heroku config:set DJANGO_SETTINGS_MODULE=Nagaribashi_express.settings_production
heroku config:set DEBUG=False
```

#### Step 4: Deploy করুন
```bash
# Add Heroku remote
git remote add heroku https://git.heroku.com/nagaribashi-express.git

# Deploy
git add .
git commit -m "Deploy to production"
git push heroku main
```

### Option 2: PythonAnywhere (Free tier available)

#### Step 1: Account তৈরি করুন
1. [PythonAnywhere.com](https://pythonanywhere.com) এ যান
2. Free account তৈরি করুন

#### Step 2: Files Upload করুন
1. Files tab এ যান
2. আপনার project files upload করুন
3. requirements.txt install করুন

#### Step 3: Web App Setup
1. Web tab এ যান
2. New web app তৈরি করুন
3. Manual configuration select করুন
4. WSGI file edit করুন

### Option 3: Railway (Modern alternative)

#### Step 1: Account তৈরি করুন
1. [Railway.app](https://railway.app) এ যান
2. GitHub account দিয়ে login করুন

#### Step 2: Project Connect করুন
1. New Project
2. Deploy from GitHub repo
3. Auto-deploy enable করুন

## 🔧 Local Production Test

### Step 1: Static Files Collect করুন
```bash
python manage.py collectstatic --settings=Nagaribashi_express.settings_production
```

### Step 2: Production Server চালান
```bash
# Install gunicorn
pip install gunicorn

# Run production server
gunicorn --bind 0.0.0.0:8000 Nagaribashi_express.wsgi:application
```

## 📱 Domain Setup

### Custom Domain যোগ করুন
1. আপনার domain registrar এ যান
2. DNS settings এ CNAME record যোগ করুন
3. Heroku/Railway domain point করুন

## 🔒 Security Checklist

- [ ] DEBUG = False
- [ ] ALLOWED_HOSTS set করা
- [ ] Secret key secure করা
- [ ] HTTPS enable করা
- [ ] Static files serve করা

## 📊 Monitoring

### Error Tracking
- Sentry.io ব্যবহার করুন
- Log files monitor করুন

### Performance
- Google Analytics যোগ করুন
- Page speed optimize করুন

## 🆘 Troubleshooting

### Common Issues:
1. **Static files not loading**: `collectstatic` run করুন
2. **Database errors**: Migrations run করুন
3. **Import errors**: Requirements install করুন

### Support:
- Email: nagaribashiexpress@gmail.com
- Phone: 01711-745000

## 🎉 Success!

আপনার ওয়েবসাইট এখন live! 🚀

**URL**: https://your-app-name.herokuapp.com
**Admin**: https://your-app-name.herokuapp.com/admin/
**Login**: admin/admin123
