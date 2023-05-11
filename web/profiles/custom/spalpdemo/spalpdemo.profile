<?php

/**
 * @file
 * Hook implementations for SPALP demo.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter().
 */
function spalpdemo_form_node_applanding_edit_form_alter(&$form, FormStateInterface $form_state, $form_id) {
  if (\Drupal::currentUser()->isAnonymous()) {
    // Prevent saving changes.
    $form['actions']['submit']['#disabled'] = TRUE;
  }
}
