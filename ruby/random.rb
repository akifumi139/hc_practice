class Group
  def initialize(member_list)
    @member_list = member_list
  end

  def random
    members = @member_list
    group_list = get_pattern

    group1_head_count = group_list[:group1]
    group1_member = []

    for i in 0..group1_head_count - 1
      member_index = rand(members.length)
      member = members.delete_at(member_index)
      group1_member.push(member)
    end

    group1_member = group1_member.sort
    group2_member = members

    p group1_member
    p group2_member
  end

  private

  def get_pattern
    pattern_list = [
      {
        'group1': 3,
        'group2': 3
      },
      {
        'group1': 2,
        'group2': 4
      }
    ]

    pattern_index = rand(pattern_list.length)
    head_count_list = pattern_list[pattern_index]
  end
end

member_list = %w[A B C D E F]
chat = Group.new(member_list)

chat.random
