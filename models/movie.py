from odoo import models, fields

class Movie(models.Model):
    _name = 'internship.movie'
    _description = 'Movies'

    name = fields.Char(String='Name', required=True)
    premiere = fields.Date(string='Premiere')
    category = fields.Selection([ ('action', 'Action'),('horror', 'Horror'),('comedy', 'Comedy'),('drama', 'Drama'),('romance', 'Romance'), ], string='Category')
    budget = fields.Float(string='Budget')
    image = fields.Binary(string='Image')