.class public Lcom/baoyz/swipemenulistview/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;
    }
.end annotation


# instance fields
.field private mLayout:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

.field private mListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

.field private mMenu:Lcom/baoyz/swipemenulistview/SwipeMenu;

.field private onItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/baoyz/swipemenulistview/SwipeMenu;Lcom/baoyz/swipemenulistview/SwipeMenuListView;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->mListView:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    .line 38
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->mMenu:Lcom/baoyz/swipemenulistview/SwipeMenu;

    .line 39
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baoyz/swipemenulistview/SwipeMenuItem;

    add-int/lit8 v1, p2, 0x1

    .line 42
    invoke-direct {p0, v0, p2}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->addItem(Lcom/baoyz/swipemenulistview/SwipeMenuItem;I)V

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addItem(Lcom/baoyz/swipemenulistview/SwipeMenuItem;I)V
    .locals 3

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getWidth()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 p2, 0x11

    .line 51
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p2, 0x1

    .line 52
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->createIcon(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->createTitle(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private createIcon(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)Landroid/widget/ImageView;
    .locals 2

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createTitle(Lcom/baoyz/swipemenulistview/SwipeMenuItem;)Landroid/widget/TextView;
    .locals 2

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getTitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuItem;->getTitleColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method


# virtual methods
.method public getOnSwipeItemClickListener()Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->position:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->mLayout:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    iget-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->mMenu:Lcom/baoyz/swipemenulistview/SwipeMenu;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p0, v1, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;->onItemClick(Lcom/baoyz/swipemenulistview/SwipeMenuView;Lcom/baoyz/swipemenulistview/SwipeMenu;I)V

    :cond_0
    return-void
.end method

.method public setLayout(Lcom/baoyz/swipemenulistview/SwipeMenuLayout;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->mLayout:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    return-void
.end method

.method public setOnSwipeItemClickListener(Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->onItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuView$OnSwipeItemClickListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuView;->position:I

    return-void
.end method
