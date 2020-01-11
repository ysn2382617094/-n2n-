.class Lwang/switchy/hin2n/activity/ListActivity$4;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistview/SwipeMenuCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/ListActivity;->doOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/ListActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$4;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/baoyz/swipemenulistview/SwipeMenu;)V
    .locals 8

    .line 201
    new-instance v0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$4;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-virtual {v1}, Lwang/switchy/hin2n/activity/ListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xc9

    const/16 v3, 0xce

    invoke-static {v2, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$4;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const/16 v2, 0x46

    invoke-static {v1, v2}, Lwang/switchy/hin2n/tool/N2nTools;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    const-string v1, "Copy"

    .line 204
    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    const/16 v1, 0x12

    .line 205
    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitleSize(I)V

    const/4 v3, -0x1

    .line 206
    invoke-virtual {v0, v3}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitleColor(I)V

    .line 207
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)V

    .line 209
    new-instance v0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;

    iget-object v4, p0, Lwang/switchy/hin2n/activity/ListActivity$4;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-virtual {v4}, Lwang/switchy/hin2n/activity/ListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/16 v5, 0xf9

    const/16 v6, 0x3f

    const/16 v7, 0x25

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v4, p0, Lwang/switchy/hin2n/activity/ListActivity$4;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v4, v2}, Lwang/switchy/hin2n/tool/N2nTools;->dp2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setWidth(I)V

    const-string v2, "Delete"

    .line 212
    invoke-virtual {v0, v2}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitle(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitleSize(I)V

    .line 214
    invoke-virtual {v0, v3}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->setTitleColor(I)V

    .line 215
    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenu;->addMenuItem(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)V

    return-void
.end method
