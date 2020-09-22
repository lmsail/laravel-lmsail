<?php

namespace Namet\Tagsinput;

use Encore\Admin\Form\Field;
use Encore\Admin\Form\Field\PlainInput;

class Tagsinput extends Field
{
    use PlainInput;

    protected static $css = [
        '/vendor/namet/laravel-admin-tagsinput/tagsinput.min.css?v=2',
    ];

    protected static $js = [
        '/vendor/namet/laravel-admin-tagsinput/tagsinput.min.js?v=2',
    ];

    public function render()
    {
        $this->initPlainInput();

        $this->prepend('<i class="fa fa-pencil fa-fw"></i>')
            ->defaultAttribute('type', 'text')
            ->defaultAttribute('data-role', 'tagsinput')
            ->defaultAttribute('id', $this->id)
            ->defaultAttribute('name', $this->elementName ?: $this->formatName($this->column))
            ->defaultAttribute('value', old($this->column, $this->value()))
            ->defaultAttribute('class', 'form-control '.$this->getElementClassString())
            ->defaultAttribute('placeholder', $this->getPlaceholder());

        $this->addVariables([
            'prepend' => $this->prepend,
            'append'  => $this->append,
        ]);

        $this->script = <<<SCRIPT
$(function () {
    $("input[data-role=tagsinput], select[multiple][data-role=tagsinput]").tagsinput();
});
SCRIPT;


        return parent::render();
    }

    /**
     * 重写父类方法，为解决js中计算input size的问题
     *
     * @return string
     */
    public function getPlaceholder()
    {
        $placeholder = parent::getPlaceholder();
        $len = mb_strlen($placeholder);
        if ($len < 20) {
            $placeholder .= str_repeat(' ', 20 - $len);
        }

        return $placeholder;
    }
}
