'use strict';

process.title = 'gro';

/* eslint no-process-env: 0 */
module.exports = {
  env: process.env.NODE_ENV,
  email: {
    caseworker: process.env.CASEWORKER_EMAIL || '',
    port: process.env.EMAIL_PORT || '',
    host: process.env.EMAIL_HOST || '',
    auth: {
      user: process.env.SMTP_USER || '',
      pass: process.env.SMTP_PASSWORD || ''
    },
    from: process.env.FROM_ADDRESS || '',
    ignoreTLS: process.env.EMAIL_IGNORE_TLS || false,
    secure: process.env.EMAIL_SECURE || false
  },
  ga: {
    tagId: process.env.GA_TAG_ID
  },
  postcode: {
    hostname: process.env.NODE_ENV === 'ci' ?
      `http://${process.env.LISTEN_HOST || '0.0.0.0'}:${process.env.PORT || 8080}/api/postcode-test` :
      'https://postcodeinfo.service.justice.gov.uk',
    authorization: process.env.POSTCODE_AUTH,
    addresses: {
      path: '/addresses',
      param: 'postcode'
    }
  }
};
