module ApplicationHelper
    
    def link_to_icon(icon_name, url_or_object, options={})
        link_to(image_tag("/images/icons/#{icon_name}.png"),
            url_or_object,
            options)
    end
end
