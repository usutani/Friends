#
#  controller.rb
#  Friends
#
#  Created by Yasuhiro Usutani on 5/21/11.
#  Copyright 2011 XCC. All rights reserved.
#

class Controller
    attr_writer :friendsTableView
    
    def awakeFromNib
        @friends = []
        @friendsTableView.dataSource = self
    end
    
    def addFriend(sender)
        new_friend = Friend.new
        new_friend.first_name = 'John'
        new_friend.last_name = 'Smith'
        @friends << new_friend
        @friendsTableView.reloadData
    end
    
    def numberOfRowsInTableView(view)
        @friends.size
    end
    
    def tableView(view, objectValueForTableColumn:column, row:index)
        friend = @friends[index]
        case column.identifier
            when 'first_name'
            friend.first_name
            when 'last_name'
            friend.last_name
        end
    end
end
