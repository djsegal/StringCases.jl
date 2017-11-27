
# ----------
#  camelize
# ----------

@test camelize("innerHTML") == "innerHTML"
@test camelize("action_name") == "actionName"
@test camelize("css-class-name") == "cssClassName"
@test camelize("my favorite items") == "myFavoriteItems"
@test camelize("My Favorite Items") == "myFavoriteItems"
@test camelize("private-docs/owner-invoice") == "privateDocs/ownerInvoice"

# ------------
#  capitalize
# ------------

@test capitalize("innerHTML") == "InnerHTML"
@test capitalize("action_name") == "Action_name"
@test capitalize("css-class-name") == "Css-class-name"
@test capitalize("my favorite items") == "My favorite items"
@test capitalize("privateDocs/ownerInvoice") == "PrivateDocs/OwnerInvoice"

# ----------
#  classify
# ----------

@test classify("innerHTML") == "InnerHTML"
@test classify("action_name") == "ActionName"
@test classify("css-class-name") == "CssClassName"
@test classify("my favorite items") == "MyFavoriteItems"
@test classify("private-docs/owner-invoice") == "PrivateDocs/OwnerInvoice"

# -----------
#  dasherize
# -----------
@test dasherize("innerHTML") == "inner-html"
@test dasherize("action_name") == "action-name"
@test dasherize("css-class-name") == "css-class-name"
@test dasherize("my favorite items") == "my-favorite-items"
@test dasherize("privateDocs/ownerInvoice") == "private-docs/owner-invoice"

# ------------
#  decamelize
# ------------
@test decamelize("innerHTML") == "inner_html"
@test decamelize("action_name") == "action_name"
@test decamelize("css-class-name") == "css-class-name"
@test decamelize("my favorite items") == "my favorite items"

# ------------
#  underscore
# ------------

@test underscore("innerHTML") == "inner_html"
@test underscore("action_name") == "action_name"
@test underscore("css-class-name") == "css_class_name"
@test underscore("my favorite items") == "my_favorite_items"
@test underscore("privateDocs/ownerInvoice") == "private_docs/owner_invoice"
