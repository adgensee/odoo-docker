# -*- coding: utf-8 -*-
{
    "name": "Adgensee example module",
    "version": "17.0.1.0",
    "category": "Other",
    
    "author": "Adgensee",
    "support": "support@adgensee.com",
    "website": "https://www.adgensee.com",

    "summary": """Adgensee example Odoo module""",
    "description": """This is an example module""",

    "depends": [
        # CORE
        'base',

        # OCA
        # 'web_responsive',
    ],
    
    "data": [
        # 'security/ir.model.access.csv',
        # 'views/res_config_settings.xml',
    ],
    
    "assets": {
        'web.assets_frontend': [

        ],
    },

    "images": ['static/description/icon.png'],

    "application": True,
    "sequence": 1,
    "installable": True,
    "auto_install": False,

    "license": "OPL-1",
    "price": 0,
    "currency": 'EUR',
}
