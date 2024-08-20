#!/bin/bash

echo "###########################################"
echo "# bin/dependencies-download.sh            #"
echo "# Download all dependencies for odoo17.0  #"
echo "# version 1.1 (2024/08/03)                #"
echo "###########################################"


# GET REPOSITORY PATH
DIR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. >/dev/null 2>&1 && pwd )"

echo "Repertoire de dev : $DIR_PATH"

# exit

# ODOO CORE
ODOO_CORE=$DIR_PATH/odoo/odoo
if [ ! -d $ODOO_CORE ]; then
	git clone https://www.github.com/odoo/odoo.git --depth 1 --branch 17.0 $ODOO_CORE
else 
	cd $ODOO_CORE && git pull origin 17.0
fi

# Generating addons_path :
ADDONS_PATH="addons_path = $ODOO_CORE/addons"
echo "ADDONS_PATH : $ADDONS_PATH"

# ODOO ENTERPRISE 

# ODOO_ENTERPRISE=$DIR_PATH/enterprise
# if [ ! -d $ODOO_ENTERPRISE ]; then
# 	git clone https://github.com/odoo/enterprise.git --depth 1 --branch 17.0 $ODOO_ENTERPRISE
# else 
# 	cd $ODOO_ENTERPRISE && git pull origin 17.0
# fi


# OCA 

OCA_ACCOUNT_FINANCIAL_REPORTING=$DIR_PATH/oca/account-financial-reporting
if [ ! -d $OCA_ACCOUNT_FINANCIAL_REPORTING ]; then
	git clone https://www.github.com/OCA/account-financial-reporting.git --depth 1 --branch 17.0 $OCA_ACCOUNT_FINANCIAL_REPORTING
else 
	cd $OCA_ACCOUNT_FINANCIAL_REPORTING && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_ACCOUNT_FINANCIAL_REPORTING"


OCA_CONTRACT=$DIR_PATH/oca/contract
if [ ! -d $OCA_CONTRACT ]; then
	git clone https://www.github.com/OCA/contract.git --depth 1 --branch 17.0 $OCA_CONTRACT
else 
	cd $OCA_CONTRACT && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_CONTRACT"


OCA_CRM=$DIR_PATH/oca/crm
if [ ! -d $OCA_CRM ]; then
	git clone https://www.github.com/OCA/crm.git --depth 1 --branch 17.0 $OCA_CRM
else 
	cd $OCA_CRM && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_CRM"


OCA_DELIVERY_CARRIER=$DIR_PATH/oca/delivery-carrier
if [ ! -d $OCA_DELIVERY_CARRIER ]; then
	git clone https://www.github.com/OCA/delivery-carrier.git --depth 1 --branch 17.0 $OCA_DELIVERY_CARRIER
else 
	cd $OCA_DELIVERY_CARRIER && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_DELIVERY_CARRIER"


OCA_E_COMMERCE=$DIR_PATH/oca/e-commerce
if [ ! -d $OCA_E_COMMERCE ]; then
	git clone https://www.github.com/OCA/e-commerce.git --depth 1 --branch 17.0 $OCA_E_COMMERCE
else 
	cd $OCA_E_COMMERCE && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_E_COMMERCE"


OCA_HR=$DIR_PATH/oca/hr
if [ ! -d $OCA_HR ]; then
	git clone https://www.github.com/OCA/hr.git --depth 1 --branch 17.0 $OCA_HR
else 
	cd $OCA_HR && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_HR"


OCA_L10N_FRANCE=$DIR_PATH/oca/l10n-france
if [ ! -d $OCA_L10N_FRANCE ]; then
	git clone https://www.github.com/OCA/l10n-france.git --depth 1 --branch 17.0 $OCA_L10N_FRANCE
else 
	cd $OCA_L10N_FRANCE && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_L10N_FRANCE"


OCA_MARGIN_ANALYSIS=$DIR_PATH/oca/margin-analysis
if [ ! -d $OCA_MARGIN_ANALYSIS ]; then
	git clone https://www.github.com/OCA/margin-analysis.git --depth 1 --branch 17.0 $OCA_MARGIN_ANALYSIS
else 
	cd $OCA_MARGIN_ANALYSIS && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_MARGIN_ANALYSIS"


OCA_MULTI_COMPANY=$DIR_PATH/oca/multi-company
if [ ! -d $OCA_MULTI_COMPANY ]; then
	git clone https://www.github.com/OCA/multi-company.git --depth 1 --branch 17.0 $OCA_MULTI_COMPANY
else 
	cd $OCA_MULTI_COMPANY && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_MULTI_COMPANY"


OCA_PARTNER_CONTACT=$DIR_PATH/oca/partner-contact
if [ ! -d $OCA_PARTNER_CONTACT ]; then
	git clone https://www.github.com/OCA/partner-contact.git --depth 1 --branch 17.0 $OCA_PARTNER_CONTACT
else
	cd $OCA_PARTNER_CONTACT && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_PARTNER_CONTACT"


OCA_PRODUCT_VARIANT=$DIR_PATH/oca/product-variant
if [ ! -d $OCA_PRODUCT_VARIANT ]; then
	git clone https://www.github.com/OCA/product-variant.git --depth 1 --branch 17.0 $OCA_PRODUCT_VARIANT
else
	cd $OCA_PRODUCT_VARIANT && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_PRODUCT_VARIANT"


OCA_PROJECT=$DIR_PATH/oca/project
if [ ! -d $OCA_PROJECT ]; then
	git clone https://www.github.com/OCA/project.git --depth 1 --branch 17.0 $OCA_PROJECT
else
	cd $OCA_PROJECT && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_PROJECT"


OCA_REPORTING_ENGINE=$DIR_PATH/oca/reporting-engine
if [ ! -d $OCA_REPORTING_ENGINE ]; then
	git clone https://www.github.com/OCA/reporting-engine.git --depth 1 --branch 17.0 $OCA_REPORTING_ENGINE
else
	cd $OCA_REPORTING_ENGINE && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_REPORTING_ENGINE"


OCA_SALE_WORKFLOW=$DIR_PATH/oca/sale-workflow
if [ ! -d $OCA_SALE_WORKFLOW ]; then
	git clone https://www.github.com/OCA/sale-workflow.git --depth 1 --branch 17.0 $OCA_SALE_WORKFLOW
else
	cd $OCA_SALE_WORKFLOW && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_SALE_WORKFLOW"


OCA_SERVER_AUTH=$DIR_PATH/oca/server-auth
if [ ! -d $OCA_SERVER_AUTH ]; then
	git clone https://www.github.com/OCA/server-auth.git --depth 1 --branch 17.0 $OCA_SERVER_AUTH
else 
	cd $OCA_SERVER_AUTH && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_SERVER_AUTH"


OCA_SERVER_BACKEND=$DIR_PATH/oca/server-backend
if [ ! -d $OCA_SERVER_BACKEND ]; then
	git clone https://www.github.com/OCA/server-backend.git --depth 1 --branch 17.0 $OCA_SERVER_BACKEND
else 
	cd $OCA_SERVER_BACKEND && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_SERVER_BACKEND"


OCA_SERVER_BRAND=$DIR_PATH/oca/server-brand
if [ ! -d $OCA_SERVER_BRAND ]; then
	git clone https://www.github.com/OCA/server-brand.git --depth 1 --branch 17.0 $OCA_SERVER_BRAND
else 
	cd $OCA_SERVER_BRAND && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_SERVER_BRAND"


OCA_SERVER_UX=$DIR_PATH/oca/server-ux
if [ ! -d $OCA_SERVER_UX ]; then
	git clone https://www.github.com/OCA/server-ux.git --depth 1 --branch 17.0 $OCA_SERVER_UX
else 
	cd $OCA_SERVER_UX && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_SERVER_UX"


OCA_SOCIAL=$DIR_PATH/oca/social
if [ ! -d $OCA_SOCIAL ]; then
	git clone https://www.github.com/OCA/social.git --depth 1 --branch 17.0 $OCA_SOCIAL
else 
	cd $OCA_SOCIAL && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_SOCIAL"


OCA_STOCK_LOGISTICS_WORKFLOW=$DIR_PATH/oca/stock-logistics-workflow
if [ ! -d $OCA_STOCK_LOGISTICS_WORKFLOW ]; then
	git clone https://www.github.com/OCA/stock-logistics-workflow.git --depth 1 --branch 17.0 $OCA_STOCK_LOGISTICS_WORKFLOW
else 
	cd $OCA_STOCK_LOGISTICS_WORKFLOW && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_STOCK_LOGISTICS_WORKFLOW"


OCA_TIMESHEET=$DIR_PATH/oca/timesheet
if [ ! -d $OCA_TIMESHEET ]; then
	git clone https://www.github.com/OCA/timesheet.git --depth 1 --branch 17.0 $OCA_TIMESHEET
else
	cd $OCA_TIMESHEET && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_TIMESHEET"


OCA_WEB=$DIR_PATH/oca/web
if [ ! -d $OCA_WEB ]; then
	git clone https://www.github.com/OCA/web.git --depth 1 --branch 17.0 $OCA_WEB
else
	cd $OCA_WEB && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_WEB"


OCA_WEBSITE=$DIR_PATH/oca/website
if [ ! -d $OCA_WEBSITE ]; then
	git clone https://www.github.com/OCA/website.git --depth 1 --branch 17.0 $OCA_WEBSITE
else
	cd $OCA_WEBSITE && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$OCA_WEBSITE"


# THEMES :

ODOO_DESIGN_THEMES=$DIR_PATH/odoo/design-themes
if [ ! -d $ODOO_DESIGN_THEMES ]; then
	git clone https://www.github.com/odoo/design-themes.git --depth 1 --branch 17.0 $ODOO_DESIGN_THEMES
else 
	cd $ODOO_DESIGN_THEMES && git pull origin 17.0
fi
ADDONS_PATH=$ADDONS_PATH",$ODOO_DESIGN_THEMES"


echo "##############################################"

echo "$ADDONS_PATH"

echo "##############################################"
