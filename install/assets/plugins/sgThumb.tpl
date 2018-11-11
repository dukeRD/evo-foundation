/**
 * sgThumb
 *
 * <strong>1.2.2</strong> Plugin to create thumbnails for SimpleGallery images
 *
 * @category	plugins
 * @internal	@modx_category Images
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal @events 
 * @internal @installset base
 * @internal @properties {
  "tconfig": [
    {
      "label": "Thumbnails Configuration",
      "type": "textarea",
      "value": "See plugin code for details",
      "default": "See plugin code for details",
      "desc": ""
    }
  ],
  "keepOriginal": [
    {
      "label": "Keep original images",
      "type": "list",
      "value": "No",
      "options": "No,Yes",
      "default": "No",
      "desc": ""
    }
  ],
  "originalFolder": [
    {
      "label": "Folder for original images",
      "type": "text",
      "value": "original",
      "default": "original",
      "desc": ""
    }
  ]
}
 */
require MODX_BASE_PATH.'assets/plugins/simplegallery/plugin.sgthumb.php';