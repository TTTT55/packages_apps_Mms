.class final Landroid/support/v4/widget/SearchViewCompat$1;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
