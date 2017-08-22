class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # every transction
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  def change_status?
    update?
  end

  def accept?
    not user_is_owner?
  end

  private

  def user_is_owner?
    record.proposed_by_user == user
  end

end
