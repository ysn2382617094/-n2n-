.class public abstract Lwang/switchy/hin2n/activity/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/app/Activity;

.field protected mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
.end method

.method protected abstract doOnCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract getContentLayout()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 37
    iput-object p0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mContext:Landroid/app/Activity;

    .line 38
    invoke-virtual {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;

    .line 39
    iget-object v0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->getContentLayout()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->getContentLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mContentView:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lwang/switchy/hin2n/template/BaseTemplate;->setContentView(Landroid/view/View;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/BaseActivity;->mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;

    invoke-virtual {v0}, Lwang/switchy/hin2n/template/BaseTemplate;->getPageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/BaseActivity;->doOnCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 66
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 60
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
