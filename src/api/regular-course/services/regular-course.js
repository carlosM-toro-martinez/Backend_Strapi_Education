'use strict';

/**
 * regular-course service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::regular-course.regular-course');
