module hero

import freeflowuniverse.herolib.core.texttools

pub fn example_data() string {
	c := "
	!!flowrift.hero
		subtext: ''
		header: 'Une fleur pour la paix'
		description: 'Dr Denis Mukwege is a world-renowned gynaecologist, human rights activist and Nobel Peace Prize laureate from east Congo. He has become the worlds leading specialist in the treatment of wartime sexual violence and a global campaigner against the use of rape as a weapon of war. Dr Mukwege is running for president and wants to restore peace and defeat hunger.'
		image: 'flowers4peace.jpeg'
		blue_btn_label: 'Learn more'
		blue_btn_url: '#'
		gray_btn_label: 'Donate'
		gray_btn_url: '#'
	"

	return texttools.dedent(c) // important to allways dedent, otherwise playbook will not work
}

pub fn example() !string {
	return process(example_data())!
}
