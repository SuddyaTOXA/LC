<?php
//Services widget
class Our_Services_Widget extends WP_Widget
{
    function Our_Services_Widget()
    {
    parent::WP_Widget(false, "Our Services Widget");
    }

    function update($new_instance, $old_instance)
    {
    return $new_instance;
    }

    function form($instance)
    {
    $title = esc_attr($instance["title"]);
    echo "<br />";
    }

    function widget($args, $instance)
    {
    $widget_id = "widget_" . $args["widget_id"];

    // I like to put the HTML output for the actual widget in a seperate file
    include(realpath(dirname(__FILE__)) . "/our_services_widget.php");
    }
}
register_widget("Our_Services_Widget");

//Services widget
class Case_Studies_Widget extends WP_Widget
{
    function Case_Studies_Widget()
    {
    parent::WP_Widget(false, "Case Studies Widget");
    }

    function update($new_instance, $old_instance)
    {
    return $new_instance;
    }

    function form($instance)
    {
    $title = esc_attr($instance["title"]);
    echo "<br />";
    }

    function widget($args, $instance)
    {
    $widget_id = "widget_" . $args["widget_id"];

    // I like to put the HTML output for the actual widget in a seperate file
    include(realpath(dirname(__FILE__)) . "/case_studies_widget.php");
    }
}
register_widget("Case_Studies_Widget");