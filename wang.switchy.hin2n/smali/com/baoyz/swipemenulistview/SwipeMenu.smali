.class public Lcom/baoyz/swipemenulistview/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baoyz/swipemenulistview/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mContext:Landroid/content/Context;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/baoyz/swipemenulistview/SwipeMenuItem;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baoyz/swipemenulistview/SwipeMenuItem;

    return-object p1
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baoyz/swipemenulistview/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mViewType:I

    return v0
.end method

.method public removeMenuItem(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenu;->mViewType:I

    return-void
.end method
