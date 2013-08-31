class Page::Layouts::Sport < Layout

  def schema
    {
      'featured_stories' => {
        'label' => 'Featured Articles',
        'type' => 'array',
        'required' => true,
        'items' => {
          'type' => 'object',
          'properties' => {
            'article' => {
              'label' => 'Article',
              'required' => true,
              'extends' => article_schema,
            },
            'video' => {
              'label' => 'Video',
              'type' => 'string',
            },
            'headline' => {
              'label' => 'Display Tag',
              'type' => 'string',
            }
          }
        }
      },
      'stories' => {
        'label' => 'Recent Articles',
        'type' => 'array',
        'required' => true,
        'items' => article_schema,
      },
      'twitter_widgets' => {
        'label' => 'Twitter Widgets',
        'type' => 'array',
        'items' => {'type' => 'string'},
      },
      'information' => {
        'type' => 'object',
        'required' => true,
        'label' => 'Game Information',
        'properties' => {
          'sport' => {
            'type' => 'string',
            'required' => true,
          },
          'home_game' => {
            'type' => 'boolean',
            'required' => true,
          },
          'main_team' => {
            'type' => 'object',
            'required' => true,
            'description' => 'This will usually be Duke',
            'properties' => {
              'name' => {
                'type' => 'string',
                'required' => true,
              },
              'mascot' => {
                'type' => 'string',
                'required' => true,
              },
              'logo' => {
                'type' => 'string',
                'required' => true,
              }
            }
          },
          'opposing_team' => {
            'type' => 'object',
            'required' => true,
            'properties' => {
              'name' => {
                'type' => 'string',
                'required' => true,
              },
              'mascot' => {
                'type' => 'string',
                'required' => true,
              },
              'logo' => {
                'type' => 'string',
                'required' => true,
              }
            }
          },
          'date' => {
            'required' => true,
            'extends' => datetime_schema,
          },
          'location' => {
            'type' => 'string',
            'required' => true,
          },
          'channel' => {
            'type' => 'string',
            'required' => true,
          }
        }
      },
      'standings_url' => {
        'type' => 'string',
        'required' => true,
      },
      'twitter' => {
        'type' => 'string',
        'required' => true,
      },
      'facebook' => {
        'type' => 'string',
        'required' => true,
      }
    }
  end

end