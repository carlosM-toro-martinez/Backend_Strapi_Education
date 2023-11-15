sudo pm2 delete all
NODE_ENV=production sudo pm2 start npm --name "Backend_Strapi_Education" -- start
