module ApplicationHelper
    def btn_tag(options = {}, &block)
        btn_component(:button, options, &block)
      end
    
    
    def btn_save(options = {}, &block)
        btn_tag({icon: 'save', text: 'Save'}.merge(options), &block)
    end

    def btn_component(component_type, options = {}, &block)
        # -- style
        options[:style] ||= 'primary'
        _btn_style = "btn-#{options[:style]}"
        # -- size
        options[:size] ||= 'normal'
        _btn_size = '' if options[:size] == 'normal'
        _btn_size = 'btn-lg' if options[:size] == 'large'
        _btn_size = 'btn-sm' if options[:size] == 'small'
        _btn_size = 'btn-xs' if options[:size] == 'extra_small'
        # -- icon size
        _icon_size = 'normal' if options[:size] == 'small'
        _icon_size = 'normal' if options[:size] == 'extra_small'
        _icon_size ||= 'lg'
        # -- icon position
        options[:icon_position] ||= 'front'
        # -- toolip
        if options.has_key?(:tooltip)
          if options.has_key?(:title) || (options.has_key?(:data) && options[:data].has_key?(:toggle))
            logger.fatal('btn_component: tooltip was not set, because a title or data-toggle attribute was also given')
          else
            options[:title] = options[:tooltip]
            options[:data] ||= {}
            options[:data][:toggle] = 'tooltip'
          end
        end
    end

    def btn_cancel_to(target, options = {}, &block)
        btn_link_to(target, {icon: 'times', text: 'Cancel', style: 'white'}.merge(options), &block)
    end
    
    def btn_link_to(target, options = {}, &block)
        btn_component(:link, {target: target}.merge(options), &block)
    end

      
end
