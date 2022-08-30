if [ -e "frontend" -a -d "frontend" ]
then
    if [ -z "$(ls -A frontend)" ]
    then
        cd frontend
        echo "Frontend app url :"
        git clone -b develop https://gitlab.com/espark-exam/frontend.git .
        cd ..
        sudo chmod -R 777 frontend
    fi
else
    if [ -f "frontend" ]
    then
        rm -rf frontend
    fi
    mkdir -p frontend
    cd frontend 
    git clone -b develop https://gitlab.com/espark-exam/frontend.git .

    cd ..
    sudo chmod -R 777 frontend
    
fi

if [ -e "backend" -a -d "backend" ]
then
    if [ -z "$(ls -A backend)" ]
    then
        cd backend
        git clone -b develop https://gitlab.com/espark-exam/api.git .
        cd ..
        sudo chmod -R 777 backend
    fi
else
    if [ -f "backend" ]
    then
        rm -rf backend
    fi
    mkdir -p backend
    cd backend 
    git clone -b develop https://gitlab.com/espark-exam/api.git .
    cd ..
    sudo chmod -R 777 backend
fi

if [ -e "mysql" -a -d "mysql" ]
then
    echo "Mysql already Exists"
else
    if [ -f "mysql" ]
    then
        rm -rf mysql
    fi
    mkdir  mysql
    sudo chmod -R 777 mysql
fi
