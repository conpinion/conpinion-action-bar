conpinion-action-bar
=================

A web component to render a a group of actions buttons

'''
<conpinion-action-bar render router="{{router}}"></conpinion-action-bar>
'''

while defining the action in another:

'''
<conpinion-action-bar>
  <conpinion-action-bar-action icon="mail" route="/mail"></conpinion-action-bar-action>
  <conpinion-action-bar-action icon="help" method="actionMethod"></conpinion-action-bar-action>
</conpinion-action-bar>
'''

Attributes
----------

  * **render**

    - *type:* Boolean
    - *default:* false

    If true the component instance renders all conpinion-action-bar-actions.

  * **router**

    - *type:* AppRouter
    - *default:* undefined

    An AppRouter instance for direct routing on action clicks.


conpinion-action-bar-action
========================

A web component to define an action-bar-action.

Attributes
----------

  * **route**

    - *type:* String (path)
    - *default:* undefined

    The path to route to

  * **method**

    - *type:* String (method name)
    - *default:* undefined

    The method to execute.
