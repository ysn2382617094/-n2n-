.class public Lwang/switchy/hin2n/template/EmptyTemplate;
.super Lwang/switchy/hin2n/template/BaseTemplate;
.source "EmptyTemplate.java"


# instance fields
.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lwang/switchy/hin2n/template/BaseTemplate;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPageView()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lwang/switchy/hin2n/template/EmptyTemplate;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lwang/switchy/hin2n/template/EmptyTemplate;->mContentView:Landroid/view/View;

    return-void
.end method
