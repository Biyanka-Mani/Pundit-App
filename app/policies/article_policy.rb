class ArticlePolicy < ApplicationPolicy
  # NOTE: Up to Pundit v2.3.1, the inheritance was declared as
  # `Scope < Scope` rather than `Scope < ApplicationPolicy::Scope`.
  # In most cases the behavior will be identical, but if updating existing
  # code, beware of possible changes to the ancestors:
  # https://gist.github.com/Burgestrand/4b4bc22f31c8a95c425fc0e30d7ef1f5
  attr_reader :user, :article
  def initialize(user, article)
    @user = user
    @article = article
  end

  def show?
    true
  end

  def index?
    true
    # if set to false - no one will have access
  end
  def new?
    create?
  end

  # Same as that of the update.
  def edit?
    update?
  end
  # Only admin is allowed to update the article and only if article is not published
  def update?
    user.admin? || !article.published || @article.user==user
  end

  # Only admin is allowed to create the article.
  def create?
    user.admin?
  end

  def destroy?
    user.admin?
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
