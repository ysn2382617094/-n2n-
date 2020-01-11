.class public Lcom/baoyz/swipemenulistview/SwipeMenuListView;
.super Landroid/widget/ListView;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;,
        Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;,
        Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I = -0x1

.field private static final TOUCH_STATE_NONE:I = 0x0

.field private static final TOUCH_STATE_X:I = 0x1

.field private static final TOUCH_STATE_Y:I = 0x2


# instance fields
.field private MAX_X:I

.field private MAX_Y:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mDirection:I

.field private mDownX:F

.field private mDownY:F

.field private mMenuCreator:Lcom/baoyz/swipemenulistview/SwipeMenuCreator;

.field private mOnMenuItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

.field private mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

.field private mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mTouchPosition:I

.field private mTouchState:I

.field private mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDirection:I

    const/4 p1, 0x5

    .line 27
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 44
    invoke-direct {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDirection:I

    const/4 p1, 0x5

    .line 27
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 54
    invoke-direct {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDirection:I

    const/4 p1, 0x5

    .line 27
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 49
    invoke-direct {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuCreator;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mMenuCreator:Lcom/baoyz/swipemenulistview/SwipeMenuCreator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuLayout;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    return-object p0
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 228
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private init()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_X:I

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 59
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    return-void
.end method


# virtual methods
.method public getCloseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOpenInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDownX:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 156
    iget v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    if-ne v5, v4, :cond_2

    .line 157
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v1, v4, [I

    aput v3, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 162
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    .line 164
    :cond_2
    iget v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    if-nez v2, :cond_c

    .line 165
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x2

    .line 166
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    goto/16 :goto_1

    .line 167
    :cond_3
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->MAX_X:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_c

    .line 168
    iput v4, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 169
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    if-eqz v0, :cond_c

    .line 170
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;->onSwipeStart(I)V

    goto/16 :goto_1

    .line 176
    :pswitch_1
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    if-ne v0, v4, :cond_c

    .line 177
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_6

    .line 178
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v0

    .line 179
    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v3, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 180
    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v3

    if-eq v0, v3, :cond_5

    .line 181
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    .line 183
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

    iget v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v0, v5}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;->onMenuOpen(I)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

    iget v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v0, v5}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;->onMenuClose(I)V

    :cond_5
    :goto_0
    if-nez v3, :cond_6

    const/4 v0, -0x1

    .line 189
    iput v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 190
    iput-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    if-eqz v0, :cond_7

    .line 194
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;->onSwipeEnd(I)V

    .line 196
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 197
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    .line 116
    :pswitch_2
    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDownX:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDownY:F

    .line 119
    iput v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v3, v5}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->pointToPosition(II)I

    move-result v3

    iput v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 123
    iget v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    if-ne v3, v0, :cond_8

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 125
    iput v4, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 126
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    return v4

    .line 130
    :cond_8
    iget v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 132
    iget-object v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 133
    iget-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v3}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 134
    iput-object v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    .line 137
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 140
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

    if-eqz p1, :cond_9

    .line 141
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

    invoke-interface {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;->onMenuClose(I)V

    :cond_9
    return v4

    .line 145
    :cond_a
    instance-of v0, v3, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_b

    .line 146
    check-cast v3, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    iput-object v3, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    .line 147
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    iget v1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->setSwipeDirection(I)V

    .line 149
    :cond_b
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 202
    :cond_c
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 65
    new-instance v0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;-><init>(Lcom/baoyz/swipemenulistview/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setMenuCreator(Lcom/baoyz/swipemenulistview/SwipeMenuCreator;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mMenuCreator:Lcom/baoyz/swipemenulistview/SwipeMenuCreator;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    return-void
.end method

.method public setOnMenuStateChangeListener(Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnMenuStateChangeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuStateChangeListener;

    return-void
.end method

.method public setOnSwipeListener(Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    return-void
.end method

.method public setOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDirection:I

    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothOpenMenu(I)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    instance-of v1, v0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz v1, :cond_1

    .line 210
    iput p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 211
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 214
    :cond_0
    check-cast v0, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    iput-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    .line 215
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    iget v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mDirection:I

    invoke-virtual {p1, v0}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->setSwipeDirection(I)V

    .line 216
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothOpenMenu()V

    :cond_1
    return-void
.end method
