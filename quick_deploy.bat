@echo off
echo 🚀 নাগরীবাসী এক্সপ্রেস - Quick Deploy
echo ======================================

echo 📁 Collecting static files...
python manage.py collectstatic --noinput --settings=Nagaribashi_express.settings_production

echo 🗄️ Running migrations...
python manage.py migrate --settings=Nagaribashi_express.settings_production

echo ✅ Ready for deployment!
echo.
echo 🌐 Next steps:
echo 1. Choose a hosting platform (Heroku, Railway, PythonAnywhere)
echo 2. Follow the DEPLOYMENT_GUIDE.md
echo 3. Upload your files
echo 4. Set environment variables
echo 5. Deploy!
echo.
echo 📞 Support: 01711-745000
echo 📧 Email: nagaribashiexpress@gmail.com
pause
