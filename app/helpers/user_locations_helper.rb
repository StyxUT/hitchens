module UserLocationsHelper
    
    def user_locations_links(user_location)
            content_tag :tr do
                [   content_tag(:td, user_location.user_id), 
                    content_tag(:td, user_location.latlon), 
                    content_tag(:td, user_location.send_method), 
                    content_tag(:td, user_location.timestamp),
                    content_tag(:td, link_to_icon('show', user_location)), 
                    content_tag(:td, link_to_icon('edit', edit_user_location_path(user_location))),
                    content_tag(:td, link_to_icon('destroy', user_location, {
                                :confirm => 'Are you sure?',
                                :method => :delete
                                })
                            )
                    ].join(' ').html_safe
        end
    end
end
