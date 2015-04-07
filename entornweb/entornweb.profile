<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

/**
 * Implementation of hook_profile_details().
 */
function entornweb_profile_details() {
  return array(
    'name' => 'entornweb',
    'description' => 'Entorn Web by Diputació de Tarragona.',
    'old_short_name' => 'entornweb_installer',
  );
}
/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function entornweb_form_install_configure_form_alter(&$form, $form_state) {

  // Site information.
  $form['site_information']['site_name']['#default_value'] = 'Entorn Web';
  $form['site_information']['site_mail']['#default_value'] = 'admin@'. $_SERVER['HTTP_HOST'];

  // Admin account.
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['admin_account']['account']['mail']['#default_value'] = 'admin@'. $_SERVER['HTTP_HOST'];

  // Server settings.
  $form['server_settings']['site_default_country']['#default_value'] = 'ES';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Madrid';

  // Update notifications.
  $form['update_notifications']['update_status_module']['#default_value'] = array();

  // Disable validate.
  $form['#validate'] = array();
}
